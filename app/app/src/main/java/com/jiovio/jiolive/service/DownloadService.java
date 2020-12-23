package com.jiovio.jiolive.service;

import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;

import com.downloader.Error;
import com.downloader.OnDownloadListener;
import com.downloader.OnPauseListener;
import com.downloader.OnProgressListener;
import com.downloader.OnStartOrResumeListener;
import com.downloader.PRDownloader;
import com.downloader.PRDownloaderConfig;
import com.downloader.Progress;
import com.jiovio.jiolive.BuildConfig;
import com.jiovio.jiolive.R;
import com.jiovio.jiolive.utils.Constants;
import com.jiovio.jiolive.utils.ToastMsg;

import java.io.File;

import static android.app.Activity.RESULT_OK;
import static com.jiovio.jiolive.utils.MyAppClass.NOTIFICATION_CHANNEL_ID;

public class DownloadService extends Service {
    private static final String TAG = "DownloadService";
    public static final String FILE_URL_INTENT = "fileUrl";
    public static final String FILE_TITLE_INTENT = "fileTitle";
    public static final String ACTION_CANCEL = BuildConfig.APPLICATION_ID + ".action.CANCEL";
    private String downloadUrl = "";
    private String fileName = "";
    private NotificationCompat.Builder notification = null;
    private NotificationManagerCompat notificationManager;
    //private static int notificationId = -1;
    private static int downloadId = -1;


    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "onStartCommand");
        //this.notificationId = startId;

        Bundle bundle = intent.getExtras();
        if (bundle != null) {
            String downloadUrl = bundle.getString(FILE_URL_INTENT);
            String fileName = bundle.getString(FILE_TITLE_INTENT);
            Log.e(TAG, downloadUrl);
            this.downloadUrl = downloadUrl;
            this.fileName = fileName;
        }

        try{
            if (intent.getAction().equalsIgnoreCase(ACTION_CANCEL)){
                //write cancel related code
                stopForeground(true);
                stopSelf();
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        //downloadFile(downloadUrl, fileName, startId);
        manageDownloading(fileName, downloadUrl, startId);

        return START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        Log.d(TAG, "onDestroy");
        updateNotification(0, 0, true, downloadId);
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void downloadFile(String fileUrl, String title, int startId) {
        //preparation for download
        String fileName = title.toString();
        //int notificationId = new Random().nextInt(100 - 1) - 1;
       // notificationId = startId;
        if (fileUrl == null || fileUrl.isEmpty()) {
            return;
        }
        String path = Constants.getDownloadDir(this) + this.getResources().getString(R.string.app_name);
        String fileExt = fileUrl.substring(fileUrl.lastIndexOf('.')); // output like .mkv
        fileName = fileName + fileExt;

        fileName = fileName.replaceAll(" ", "_");
        fileName = fileName.replaceAll(":", "_");
        File file = new File(path, fileName); // e_ for encode
        if (file.exists()) {
            new ToastMsg(this).toastIconError("File already exist.");
            stopSelf();
            return;
        }
        //String dir = this.getExternalCacheDir().toString();
        Data data = new Data.Builder()
                .putString("url", fileUrl)
                .putString("dir", path)
                .putString("fileName", fileName)
                .build();
        OneTimeWorkRequest request = new OneTimeWorkRequest.Builder(DownloadWorkManager.class)
                .setInputData(data)
                .build();

        String workId = request.getId().toString();
        Constants.workId = workId;
        WorkManager.getInstance().enqueue(request);

        LocalBroadcastManager.getInstance(this).registerReceiver(
                receiver, new IntentFilter(DownloadWorkManager.PROGRESS_RECEIVER));
    }

    private void createNotification(String title, int startId) {
        Intent cancelIntent = new Intent(this, DownloadService.class);
        cancelIntent.setAction(ACTION_CANCEL);
        PendingIntent pendingIntent = PendingIntent.getService(this, 0, cancelIntent, PendingIntent.FLAG_CANCEL_CURRENT);

        notificationManager = NotificationManagerCompat.from(this);
        notification = new NotificationCompat.Builder(this, NOTIFICATION_CHANNEL_ID)
                .setSmallIcon(R.drawable.logo)
                .setContentTitle(title)
                .setContentText("Download in progress")
                .setPriority(NotificationCompat.PRIORITY_HIGH)
                .setCategory(NotificationCompat.CATEGORY_PROGRESS)
                .addAction(R.drawable.ic_close_black_24dp, "Cancel", pendingIntent)
                .setOngoing(true)
                .setOnlyAlertOnce(true)
                .setProgress(100, 0, false);
        notificationManager.notify(startId, notification.build());

    }

    private void updateNotification(int totalMB, int downloadedMB, boolean isCompleted, int startId) {
        if (notification != null) {
            if (!isCompleted) {
                String contentText = downloadedMB + "mb/" + totalMB + "mb";
                notification.setProgress(totalMB, downloadedMB, false);
                notification.setContentText(contentText);
            } else {
                notification.setContentTitle("Done.")
                        .setContentText("Download Completed.")
                        .setProgress(0, 0, false)
                        .setOngoing(false);
            }
            notificationManager.notify(startId, notification.build());
        }
    }

    private void hideNotification(int startId) {
        if (notification != null) {
            Log.e(TAG, "hideNotification: ");
            notification.setContentText("Download finished.")
                    .setContentTitle("Done.")
                    .setProgress(0, 0, false)
                    .setOngoing(false);
            notificationManager.notify(startId, notification.build());
        }
    }

    BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            int resultCode = intent.getIntExtra("result", 0);
            final int downloadId = intent.getIntExtra("downloadId", 0);
            final String workId = intent.getStringExtra("workId");
            final long downloadedByte = intent.getLongExtra("currentByte", 0);
            final long totalByte = intent.getLongExtra("totalByte", 0);

            if (resultCode == RESULT_OK) {
                double totalKb = totalByte / 1024;
                double downloadKb = downloadedByte / 1024;

                double totalMb = totalKb / 1024;
                double downloadMb = downloadKb / 1024;
                if (downloadedByte != totalByte) {
                    //Log.e("download", "TotalMB : " + totalMb + " Downloaded: " + downloadMb);
                    //createNotification(fileName, (int) totalMb, (int) downloadMb);
                } else {
                    hideNotification(downloadId);
                    //stopSelf(notificationId);
                    stopSelf(downloadId);
                    Log.e(TAG, "onReceive: Download Completed");

                }
            }
        }
    };

    private void manageDownloading(String title, String downloadUrl, int startId) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                if (downloadUrl == null || downloadUrl.isEmpty()) {
                    return;
                }
                String path = Constants.getDownloadDir(getApplicationContext()) + getApplicationContext().getResources().getString(R.string.app_name);
                String fileExt = downloadUrl.substring(downloadUrl.lastIndexOf('.')); // output like .mkv
                fileName = fileName + fileExt;

                fileName = fileName.replaceAll(" ", "_");
                fileName = fileName.replaceAll(":", "_");
                File file = new File(path, fileName); // e_ for encode
                if (file.exists()) {
                    new ToastMsg(getApplicationContext()).toastIconError("File already exist.");
                    stopSelf();
                    return;
                }

                final PRDownloaderConfig config = PRDownloaderConfig.newBuilder()
                        .setDatabaseEnabled(true)
                        .setReadTimeout(30_000)
                        .setConnectTimeout(30_000)
                        .build();
                PRDownloader.initialize(getApplicationContext(), config);
                downloadId = PRDownloader.download(downloadUrl, path, title)
                        .build()
                        .setOnStartOrResumeListener(new OnStartOrResumeListener() {
                            @Override
                            public void onStartOrResume() {
                                createNotification(title, downloadId);
                                new ToastMsg(getApplicationContext()).toastIconSuccess("Download started.");
                            }
                        })
                        .setOnPauseListener(new OnPauseListener() {
                            @Override
                            public void onPause() {

                            }
                        })
                        .setOnProgressListener(new OnProgressListener() {
                            @Override
                            public void onProgress(Progress progress) {
                                long downloadedBytes = progress.currentBytes / 1024 / 1024;
                                long totalBytes = progress.totalBytes / 1024 / 1024;
                                final int currentProgress = (int) ((progress.currentBytes / 1024) / 1024); //mb
                                Log.e(TAG, "onProgress: " + currentProgress);
                                updateNotification((int) totalBytes, (int) downloadedBytes, false, downloadId);
                            }
                        })
                        .start(new OnDownloadListener() {
                            @Override
                            public void onDownloadComplete() {
                                Log.e(TAG, "onDownloadComplete: Completed");
                                updateNotification(0, 0, true, downloadId);
                            }

                            @Override
                            public void onError(Error error) {
                                error.getConnectionException().printStackTrace();
                                new ToastMsg(getApplicationContext()).toastIconError("something went wrong");
                                Log.e(TAG, "onError: Error Downloading");
                            }
                        });
            }
        }).start();
    }

}
