package com.jiovio.jiolive.service;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.snackbar.Snackbar;
import com.jiovio.jiolive.R;
import com.jiovio.jiolive.models.DownloadInfo;
import com.jiovio.jiolive.utils.Constants;
import com.jiovio.jiolive.utils.ToastMsg;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import static android.content.Context.DOWNLOAD_SERVICE;

public class DownloadHelper {
    private static final String TAG = "DownloadHelper";
    private String title;
    private String url;
    private Activity context;
    private List<DownloadInfo> list = new ArrayList<>();

    public DownloadHelper(Activity context, String title, String url) {
        this.title = title;
        this.url = url;
        this.context = context;
    }

    public void downloadFile() {
        String fileExt = url.substring(url.lastIndexOf('.')); // output like .mkv
        title = title + fileExt;

        title = title.replaceAll(" ", "_");
        title = title.replaceAll(":", "_");

        String path = Constants.getDownloadDir(context);
        File file = new File(path, title); // e_ for encode
        try {
            if (file.exists()) {
                new ToastMsg(context).toastIconError("File already exist.");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        DownloadManager manager = (DownloadManager) context.getSystemService(DOWNLOAD_SERVICE);
        try {
            if (manager != null) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
                request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_WIFI | DownloadManager.Request.NETWORK_MOBILE)
                        .setTitle(this.title)
                        .setDescription("Downloading...")
                        .setAllowedOverMetered(true)
                        .setAllowedOverRoaming(true)
                        .setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED)
                        .setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS,
                                "/" + context.getResources().getString(R.string.app_name) +
                                        "/" + context.getResources().getString(R.string.app_name) +
                                        "/" + title)
                        .setMimeType(getMimeType(Uri.parse(url)));
                long id = manager.enqueue(request);
                Log.e(TAG, "downloadFile: id: " + id );
                showSnackBar(title, "Download started on notification bar.");


                //Track downloading bytes
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        boolean isDownloading = true;
                        int dl_progress = 0;

                        while (isDownloading) {
                            DownloadManager.Query q = new DownloadManager.Query();
                            q.setFilterById(id);
                            Cursor cursor = manager.query(q);
                            if (cursor != null) {
                                cursor.moveToFirst();
                            }

                            int status;
                            try {
                                status = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_STATUS));
                                statusMessage(status);
                                int bytes_downloaded = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR));
                                int bytes_total = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_TOTAL_SIZE_BYTES));

                                if (cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_STATUS)) == DownloadManager.STATUS_SUCCESSFUL) {
                                    showSnackBar(title, "Download Completed.");
                                }
                                if (cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_STATUS)) == DownloadManager.STATUS_FAILED) {
                                    isDownloading = false;
                                }
                                dl_progress = (int) ((bytes_downloaded * 100l) / bytes_total);

                            } catch (Exception e) {
                                Log.e(TAG, "runError: " + e.getLocalizedMessage());
                            } finally {
                                if (cursor != null) {
                                    cursor.close();
                                }
                            }

                            int finalDl_progress = dl_progress;
                            context.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {

                                }
                            });
                            cursor.close();
                        }
                    }
                }).start();

            } else {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                context.startActivity(intent);
            }
        } catch (Exception e) {
            Toast.makeText(context, e.getLocalizedMessage(), Toast.LENGTH_SHORT).show();
            Log.e("error", "downloadFile: " + e.getLocalizedMessage());
        }
    }

    private String getMimeType(Uri uri) {
        ContentResolver resolver = context.getContentResolver();
        MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
        return mimeTypeMap.getExtensionFromMimeType(resolver.getType(uri));
    }

    private String statusMessage(int status) {
        String msg = "???";

        switch (status) {
            case DownloadManager.STATUS_FAILED:
                msg = "Download failed!";
                break;

            case DownloadManager.STATUS_PAUSED:
                msg = "Download paused!";
                break;

            case DownloadManager.STATUS_PENDING:
                msg = "Download pending!";
                break;

            case DownloadManager.STATUS_RUNNING:
                msg = "Download in progress!";
                break;

            case DownloadManager.STATUS_SUCCESSFUL:
                msg = "Download complete!";
                break;

            default:
                msg = "Download is nowhere in sight";
                break;
        }
        return (msg);
    }

    private void showSnackBar(String label, String message) {
        final Snackbar snackbar = Snackbar.make(context.findViewById(android.R.id.content), "", Snackbar.LENGTH_LONG);
        //inflate view
        View custom_view = context.getLayoutInflater().inflate(R.layout.custom_snack_bar, null);
        TextView labelTextView = custom_view.findViewById(R.id.file_label);
        TextView info = custom_view.findViewById(R.id.snackBarInfo);
        info.setText(message);
        labelTextView.setText(label);

        snackbar.getView().setBackgroundColor(Color.TRANSPARENT);
        Snackbar.SnackbarLayout snackBarView = (Snackbar.SnackbarLayout) snackbar.getView();
        snackBarView.setPadding(0, 0, 0, 0);


        snackBarView.addView(custom_view, 0);
        snackbar.show();
    }
}