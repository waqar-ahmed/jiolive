package com.jiovio.jiolive.database.config;

import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

import static androidx.room.OnConflictStrategy.REPLACE;

@Dao
public interface TempConfigDao {
    @Insert(onConflict = REPLACE)
    void insertConfigData(TempAdsConfig adsConfig);

    @Update
    void updateConfigData(TempAdsConfig adsConfig);

    @Query("DELETE FROM temp_ads_config")
    void deleteAllConfigData();

    @Delete
    void delete(TempAdsConfig adsConfig);

    @Query("SELECT * FROM temp_ads_config")
    LiveData<List<TempAdsConfig >> getAdsConfigData();
}
