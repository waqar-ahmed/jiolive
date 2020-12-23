package com.jiovio.jiolive.database.continueWatching;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity(tableName = "continue_watching")
public class ContinueWatchingModel {

    @PrimaryKey
    @ColumnInfo(name = "Content ID")
    @NonNull
    private String id;

    @ColumnInfo(name = "Name")
    public String name;

    @ColumnInfo(name = "Image URL")
    private String imgUrl;

    @ColumnInfo(name = "Progress")
    private float progress;

    @ColumnInfo(name = "Position")
    private long position;

    @ColumnInfo(name = "Stream URL")
    private String streamURL;

    @ColumnInfo(name = "Type")
    private String type;

    @ColumnInfo(name = "vType")
    public String vType;

    public ContinueWatchingModel(@NonNull String id, String name, String imgUrl, float progress, long position, String streamURL, String type, String vType) {
        this.id = id;
        this.name = name;
        this.imgUrl = imgUrl;
        this.progress = progress;
        this.position = position;
        this.streamURL = streamURL;
        this.type = type;
        this.vType = vType;
    }

    public String getvType() {
        return vType;
    }

    public void setvType(String vType) {
        this.vType = vType;
    }


    public long getPosition() {
        return position;
    }

    public void setPosition(long position) {
        this.position = position;
    }

    public String getStreamURL() {
        return streamURL;
    }

    public void setStreamURL(String streamURL) {
        this.streamURL = streamURL;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @NonNull
    public String getId() {
        return id;
    }

    public void setId(@NonNull String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public float getProgress() {
        return progress;
    }

    public void setProgress(float progress) {
        this.progress = progress;
    }
}
