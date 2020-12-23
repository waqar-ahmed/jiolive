package com.jiovio.jiolive.service;

import android.content.Context;
import android.content.Intent;

import androidx.annotation.NonNull;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.Data;
import androidx.work.Worker;
import androidx.work.WorkerParameters;

import com.downloader.Error;
import com.downloader.OnCancelListener;
import com.downloader.OnDownloadListener;
import com.downloader.OnPauseListener;
import com.downloader.OnProgressListener;
import com.downloader.OnStartOrResumeListener;
import com.downloader.PRDownloader;
import com.downloader.PRDownloaderConfig;
import com.downloader.Progress;
import com.jiovio.jiolive.R;
import com.jiovio.jiolive.utils.Constants;
import com.jiovio.jiolive.utils.ToastMsg;

import static android.app.Activity.RESULT_OK;

public class DownloadWorkManager extends Worker {
    private LiveDataHelper liveDataHelper;
    public static final String START_PAUSE_ACTION = "startPause";
    public static final String START_PAUSE_STATUS = "startPauseStatus";
    public static final String START_PAUSE_FEEDBACK_STATUS = "startPauseFeedbackStatus";
    public static final String PROGRESS_RECEIVER = "progress_receiver";

    String fileName;
    int downloadId;

    Context context;
    private boolean isDownloading;
    private String workId;

    private long downloadByte, totalByte;

    public DownloadWorkManager(@NonNull Context context, @NonNull WorkerParameters workerParams) {
        super(context, workerParams);
        this.context = context;
    }

    @NonNull
    @Override
    public Result doWork() {
        workId = Constants.workId;
        liveDataHelper = LiveDataHelper.getInstance();

        Data data = getInputData();
        final String url = data.getString("url");
        final String dir = data.getString("dir");
        final String fileName = data.getString("fileName");

        new Thread(new Runnable() {
            @Override
            public void run() {
                // Enabling database for resume support even after the application is killed:
                final PRDownloaderConfig config = PRDownloaderConfig.newBuilder()
                        .setDatabaseEnabled(true)
                        .setReadTimeout(30_000)
                        .setConnectTimeout(30_000)
                        .build();
                PRDownloader.initialize(getApplicationContext(), config);
                String path = Constants.getDownloadDir(context) + context.getResources().getString(R.string.app_name);
                downloadId = PRDownloader.download(url, dir, fileName)
                        .build()
                        .setOnStartOrResumeListener(new OnStartOrResumeListener() {
                            @Override
                            public void onStartOrResume() {
                                isDownloading = true;
                                Intent intent = new Intent(START_PAUSE_FEEDBACK_STATUS);
                                intent.putExtra("result", RESULT_OK);
                                intent.putExtra("downloadId", downloadId);
                                intent.putExtra("status", "start");
                                intent.putExtra("fileName", fileName);
                                LocalBroadcastManager.getInstance(context).sendBroadcast(intent);

                                new ToastMsg(context).toastIconSuccess("Download started.");

                            }
                        })
                        .setOnPauseListener(new OnPauseListener() {
                            @Override
                            public void onPause() {
                                isDownloading = false;

                                Intent intent = new Intent(START_PAUSE_FEEDBACK_STATUS);
                                intent.putExtra("result", RESULT_OK);
                                intent.putExtra("downloadId", downloadId);
                                intent.putExtra("status", "pause");
                                LocalBroadcastManager.getInstance(context).sendBroadcast(intent);

                            }
                        })
                        .setOnCancelListener(new OnCancelListener() {
                            @Override
                            public void onCancel() {
                                isDownloading = false;
                                new ToastMsg(context).toastIconSuccess("Download canceled");
                            }
                        })
                        .setOnProgressListener(new OnProgressListener() {
                            @Override
                            public void onProgress(Progress progress) {
                                Intent intent = new Intent(PROGRESS_RECEIVER);
                                intent.putExtra("result", RESULT_OK);
                                intent.putExtra("downloadId", downloadId);
                                intent.putExtra("currentByte", progress.currentBytes);
                                intent.putExtra("workId", workId);
                                intent.putExtra("totalByte", progress.totalBytes);
                                LocalBroadcastManager.getInstance(context).sendBroadcast(intent);

                                downloadByte = progress.currentBytes;
                                totalByte = progress.totalBytes;
                                final int currentProgress = (int) ((progress.currentBytes / 1024) / 1024); //mb
                                //liveDataHelper.updatePercentage(currentProgress); //mb);
                            }
                        })
                        .start(new OnDownloadListener() {
                            @Override
                            public void onDownloadComplete() {
                                new ToastMsg(context).toastIconSuccess("Download Completed");
                                liveDataHelper.completeStatus(null);
                            }

                            @Override
                            public void onError(Error error) {
                                error.getConnectionException().printStackTrace();
                                new ToastMsg(context).toastIconError("something went wrong");
                            }
                        });
            }
        }).start();

        return Result.success();
    }

    @Override
    public void onStopped() {
        super.onStopped();


    }
}
