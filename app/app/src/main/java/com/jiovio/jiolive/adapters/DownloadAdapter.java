package com.jiovio.jiolive.adapters;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.jiovio.jiolive.R;
import com.jiovio.jiolive.models.CommonModels;
import com.jiovio.jiolive.service.DownloadService;
import com.jiovio.jiolive.service.DownloadHelper;
import com.jiovio.jiolive.utils.Constants;
import com.jiovio.jiolive.utils.ToastMsg;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import static com.jiovio.jiolive.service.FileDownloadJobService.FILE_TITLE_INTENT;
import static com.jiovio.jiolive.service.FileDownloadJobService.FILE_URL_INTENT;

public class DownloadAdapter extends RecyclerView.Adapter<DownloadAdapter.OriginalViewHolder> {
    private static final String TAG = "DownloadAdapter";
    private static final int DOWNLOAD_JOB_KEY = 101;
    private List<CommonModels> items = new ArrayList<>();
    private Activity context;
    private boolean isDialog;
    private View v = null;

    private ServerAdapter.OnItemClickListener mOnItemClickListener;

    private DownloadAdapter.OriginalViewHolder viewHolder;


    public DownloadAdapter(Activity context, List<CommonModels> items, boolean isDialog) {
        this.context = context;
        this.items = items;
        this.isDialog = isDialog;
    }

    @Override
    public DownloadAdapter.OriginalViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        DownloadAdapter.OriginalViewHolder vh;
        if (isDialog){
            v = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_download_item_vertical, parent, false);
        }else {
            v = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_download_item, parent, false);
        }
        vh = new DownloadAdapter.OriginalViewHolder(v);
        return vh;
    }

    @Override
    public void onBindViewHolder(final DownloadAdapter.OriginalViewHolder holder, final int position) {

        final CommonModels obj = items.get(position);
        holder.name.setText(obj.getTitle());
        holder.resolution.setText(obj.getResulation() + "," );
        holder.size.setText(obj.getFileSize());

        holder.itemLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (obj.isInAppDownload()) {
                    //in app download enabled
                    //startDownloadWithNotification(obj.getStremURL(), obj.getTitle());

                    DownloadHelper helper = new DownloadHelper(context, obj.getTitle(), obj.getStremURL());
                    helper.downloadFile();

                } else {
                    String url = obj.getStremURL();
                    Intent i = new Intent(Intent.ACTION_VIEW);
                    i.setData(Uri.parse(url));
                    context.startActivity(i);
                }
            }
        });

    }


    private void startDownloadWithNotification(String url, String fileName){
        String fileExt = url.substring(url.lastIndexOf('.')); // output like .mkv
        fileName = fileName + fileExt;

        fileName = fileName.replaceAll(" ", "_");
        fileName = fileName.replaceAll(":", "_");

        String path = Constants.getDownloadDir(context) + context.getResources().getString(R.string.app_name);
        File file = new File(path, fileName); // e_ for encode
        try {
            if (file.exists()){
                new ToastMsg(context).toastIconError("File already exist.");
                return;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        Intent intent = new Intent(context, DownloadService.class);
        intent.putExtra(FILE_URL_INTENT, url);
        intent.putExtra(FILE_TITLE_INTENT, fileName);

        new Thread(new Runnable() {
            @Override
            public void run() {
                context.startService(intent);
            }
        }).start();

    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public class OriginalViewHolder extends RecyclerView.ViewHolder {

        public TextView name, resolution, size;
        public LinearLayout itemLayout;

        public OriginalViewHolder(View v) {
            super(v);
            name = v.findViewById(R.id.name);
            resolution = v.findViewById(R.id.resolution_tv);
            size = v.findViewById(R.id.size_tv);
            itemLayout=v.findViewById(R.id.item_layout);
        }
    }

}