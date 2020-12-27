package com.cloudnest.jiolive.adapters;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.cloudnest.jiolive.R;
import com.cloudnest.jiolive.models.single_details.DownloadLink;
import com.cloudnest.jiolive.service.DownloadHelper;
import com.cloudnest.jiolive.utils.ItemAnimation;

import java.util.List;

public class EpisodeDownloadAdapter extends RecyclerView.Adapter<EpisodeDownloadAdapter.SeasonDownloadViewModel> {
    private static final String TAG = "SeasonDownloadAdapter";
    private int lastPosition = -1;
    private boolean on_attach = true;
    private int animation_type = 2;

    private Activity context;
    private List<DownloadLink> downloadLinks;
    private int snackBarLayout;

    public EpisodeDownloadAdapter(Activity context, List<DownloadLink> downloadLinks) {
        this.context = context;
        this.downloadLinks = downloadLinks;
    }

    @NonNull
    @Override
    public SeasonDownloadViewModel onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.season_download_item,  parent, false);
        return new SeasonDownloadViewModel(view);
    }

    @Override
    public void onBindViewHolder(@NonNull SeasonDownloadViewModel holder, int position) {
        if (downloadLinks != null){
            DownloadLink downloadLink = downloadLinks.get(position);
            holder.episodeName.setText(downloadLink.getLabel());
            holder.seasonDownloadLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (downloadLink.isInAppDownload()) {
                        //in app download enabled
                        DownloadHelper helper = new DownloadHelper(context, downloadLink.getLabel(), downloadLink.getDownloadUrl());
                        helper.downloadFile();

                    } else {
                        String url = downloadLink.getDownloadUrl();
                        Intent i = new Intent(Intent.ACTION_VIEW);
                        i.setData(Uri.parse(url));
                        context.startActivity(i);
                    }
                }
            });
        }
    }

    @Override
    public int getItemCount() {
        return downloadLinks.size();
    }

    class SeasonDownloadViewModel extends RecyclerView.ViewHolder{
        private TextView episodeName;
        private ImageView downloadImageView;
        private CardView seasonDownloadLayout;

        public SeasonDownloadViewModel(@NonNull View itemView) {
            super(itemView);
            episodeName             = itemView.findViewById(R.id.episodeNameOfSeasonDownload);
            downloadImageView       = itemView.findViewById(R.id.downloadImageViewOfSeasonDownload);
            seasonDownloadLayout    = itemView.findViewById(R.id.seasonDownloadLayout);
        }
    }


    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {

        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                on_attach = false;
                super.onScrollStateChanged(recyclerView, newState);
            }

        });



        super.onAttachedToRecyclerView(recyclerView);
    }

    private void setAnimation(View view, int position) {
        if (position > lastPosition) {
            ItemAnimation.animate(view, on_attach ? position : -1, animation_type);
            lastPosition = position;
        }
    }
}
