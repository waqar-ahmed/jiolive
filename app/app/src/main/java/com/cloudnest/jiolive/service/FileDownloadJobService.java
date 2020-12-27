package com.cloudnest.jiolive.service;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PersistableBundle;
import android.util.Log;

import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;

import com.cloudnest.jiolive.R;
import com.cloudnest.jiolive.utils.Constants;
import com.cloudnest.jiolive.utils.ToastMsg;

import java.io.File;
import java.util.Random;

import static android.app.Activity.RESULT_OK;
import static com.cloudnest.jiolive.utils.MyAppClass.NOTIFICATION_CHANNEL_ID;

public class FileDownloadJobService extends JobService {
    private static final String TAG = "FileDownloadJobService";
    public static final String FILE_URL_INTENT = "fileUrl";
    public static final String FILE_TITLE_INTENT = "fileTitle";
    private JobParameters parameters;
    private NotificationCompat.Builder notification = null;
    private NotificationManagerCompat notificationManager;


    @Override
    public boolean onStartJob(JobParameters params) {
        parameters = params;
        PersistableBundle bundle = params.getExtras();
        String fileUrl = bundle.getString(FILE_URL_INTENT);
        String title = bundle.getString(FILE_TITLE_INTENT);

        //preparation for download
        String fileName = title.toString();
        int notificationId = new Random().nextInt(100 - 1) - 1;
        if (fileUrl == null || fileUrl.isEmpty()) {
            return false;
        }
        String path = Constants.getDownloadDir(this) + this.getResources().getString(R.string.app_name);
        String fileExt = fileUrl.substring(fileUrl.lastIndexOf('.')); // output like .mkv
        fileName = fileName + fileExt;

        fileName = fileName.replaceAll(" ", "_");
        fileName = fileName.replaceAll(":", "_");
        File file = new File(path, fileName); // e_ for encode
        if (file.exists()) {
            new ToastMsg(this).toastIconError("File already exist.");
            return false;
        }
        String dir = this.getExternalCacheDir().toString();
        Data data = new Data.Builder()
                .putString("url", fileUrl)
                .putString("dir", dir)
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
        return true;
    }


    @Override
    public boolean onStopJob(JobParameters params) {
        Log.e(TAG, "onStopJob: jobStopped");
        return false;
    }


    private void createNotification(String title, int totalMb, int downloadedMB) {
        if (notification == null) {
            notificationManager = NotificationManagerCompat.from(this);
            notification = new NotificationCompat.Builder(this, NOTIFICATION_CHANNEL_ID)
                    .setSmallIcon(R.drawable.logo)
                    .setContentTitle(title)
                    .setContentText("Download in progress")
                    .setPriority(NotificationCompat.PRIORITY_LOW)
                    .setOngoing(true)
                    .setOnlyAlertOnce(true)
                    .setProgress(totalMb, 0, false);
            notificationManager.notify(2, notification.build());
        }

        updateNotification(totalMb, downloadedMB);
    }

    private void updateNotification(int totalMB, int downloadedMB) {
        if (notification != null) {
            String contentText = downloadedMB + "mb/" + totalMB + "mb";
            notification.setProgress(totalMB, downloadedMB, false);
            notification.setContentText(contentText);
            notificationManager.notify(2, notification.build());
        }
    }

    private void hideNotification() {
        if (notification != null) {
            notification.setContentText("Download finished.")
                    .setContentTitle("Done.")
                    .setProgress(0, 0, false)
                    .setOngoing(false);
            notificationManager.notify(2, notification.build());
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
                    Log.e("download", "TotalMB : " + totalMb + " Downloaded: " + downloadMb);
                    createNotification("Downloading", (int) totalMb, (int) downloadMb);
                } else {
                    hideNotification();
                    jobFinished(parameters, false);
                    Log.e(TAG, "onReceive: Download Completed");

                }
            }
        }
    };

}
