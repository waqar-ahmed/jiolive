package com.jiovio.jiolive.database.config;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Entity(tableName = "temp_ads_config")
public class TempAdsConfig {
    @PrimaryKey
    @ColumnInfo(name = "ads_config_id")
    @NonNull
    private String id;

    @ColumnInfo(name = "ads_enable")
    @SerializedName("ads_enable")
    @Expose
    private String adsEnable;

    @ColumnInfo(name = "mobile_ads_network")
    @SerializedName("mobile_ads_network")
    @Expose
    private String mobileAdsNetwork;

    @ColumnInfo(name = "admob_app_id")
    @SerializedName("admob_app_id")
    @Expose
    private String admobAppId;

    @ColumnInfo(name = "admob_banner_ads_id")
    @SerializedName("admob_banner_ads_id")
    @Expose
    private String admobBannerId;

    @ColumnInfo(name = "admob_interstitial_ads_id")
    @SerializedName("admob_interstitial_ads_id")
    @Expose
    private String admobInterstitialId;

    @ColumnInfo(name = "fan_native_ads_placement_id")
    @SerializedName("fan_native_ads_placement_id")
    @Expose
    private String fanNativeAdsPlacementId;

    @ColumnInfo(name = "fan_banner_ads_placement_id")
    @SerializedName("fan_banner_ads_placement_id")
    @Expose
    private String fanBannerAdsPlacementId;

    @ColumnInfo(name = "fan_interstitial_ads_placement_id")
    @SerializedName("fan_interstitial_ads_placement_id")
    @Expose
    private String fanInterstitialAdsPlacementId;

    @ColumnInfo(name = "startapp_app_id")
    @SerializedName("startapp_app_id")
    @Expose
    private String startAppAppId;

    public TempAdsConfig(@NonNull String id, String adsEnable, String mobileAdsNetwork, String admobAppId, String admobBannerId, String admobInterstitialId, String fanNativeAdsPlacementId, String fanBannerAdsPlacementId, String fanInterstitialAdsPlacementId, String startAppAppId) {
        this.id = id;
        this.adsEnable = adsEnable;
        this.mobileAdsNetwork = mobileAdsNetwork;
        this.admobAppId = admobAppId;
        this.admobBannerId = admobBannerId;
        this.admobInterstitialId = admobInterstitialId;
        this.fanNativeAdsPlacementId = fanNativeAdsPlacementId;
        this.fanBannerAdsPlacementId = fanBannerAdsPlacementId;
        this.fanInterstitialAdsPlacementId = fanInterstitialAdsPlacementId;
        this.startAppAppId = startAppAppId;
    }

    @NonNull
    public String getId() {
        return id;
    }

    public void setId(@NonNull String id) {
        this.id = id;
    }

    public String getAdsEnable() {
        return adsEnable;
    }

    public void setAdsEnable(String adsEnable) {
        this.adsEnable = adsEnable;
    }

    public String getMobileAdsNetwork() {
        return mobileAdsNetwork;
    }

    public void setMobileAdsNetwork(String mobileAdsNetwork) {
        this.mobileAdsNetwork = mobileAdsNetwork;
    }

    public String getAdmobAppId() {
        return admobAppId;
    }

    public void setAdmobAppId(String admobAppId) {
        this.admobAppId = admobAppId;
    }

    public String getAdmobBannerId() {
        return admobBannerId;
    }

    public void setAdmobBannerId(String admobBannerId) {
        this.admobBannerId = admobBannerId;
    }

    public String getAdmobInterstitialId() {
        return admobInterstitialId;
    }

    public void setAdmobInterstitialId(String admobInterstitialId) {
        this.admobInterstitialId = admobInterstitialId;
    }

    public String getFanNativeAdsPlacementId() {
        return fanNativeAdsPlacementId;
    }

    public void setFanNativeAdsPlacementId(String fanNativeAdsPlacementId) {
        this.fanNativeAdsPlacementId = fanNativeAdsPlacementId;
    }

    public String getFanBannerAdsPlacementId() {
        return fanBannerAdsPlacementId;
    }

    public void setFanBannerAdsPlacementId(String fanBannerAdsPlacementId) {
        this.fanBannerAdsPlacementId = fanBannerAdsPlacementId;
    }

    public String getFanInterstitialAdsPlacementId() {
        return fanInterstitialAdsPlacementId;
    }

    public void setFanInterstitialAdsPlacementId(String fanInterstitialAdsPlacementId) {
        this.fanInterstitialAdsPlacementId = fanInterstitialAdsPlacementId;
    }

    public String getStartAppAppId() {
        return startAppAppId;
    }

    public void setStartAppAppId(String startAppAppId) {
        this.startAppAppId = startAppAppId;
    }
}
