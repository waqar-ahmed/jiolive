package com.jiovio.jiolive.database.config;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Entity(tableName = "temp_configuration")
public class TempConfiguration {
    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = "configuration_id")
    private String id;

    @ColumnInfo(name = "ads_config")
    @SerializedName("ads_config")
    @Expose
    private TempAdsConfig adsConfig;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public TempAdsConfig getAdsConfig() {
        return adsConfig;
    }

    public void setAdsConfig(TempAdsConfig adsConfig) {
        this.adsConfig = adsConfig;
    }
}
