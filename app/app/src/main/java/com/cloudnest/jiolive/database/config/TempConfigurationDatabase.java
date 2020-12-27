package com.cloudnest.jiolive.database.config;

import android.content.Context;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;

@Database(entities = {TempAdsConfig.class}, exportSchema = false, version = 1)
public abstract class TempConfigurationDatabase extends RoomDatabase {
    private static TempConfigurationDatabase instance;

    public abstract TempConfigDao tempConfigDao();

    public static synchronized TempConfigurationDatabase getInstance(Context context){
        if (instance == null){
            instance= Room.databaseBuilder(context.getApplicationContext(),
                    TempConfigurationDatabase.class, "temp_config_database")
                    .fallbackToDestructiveMigration()
                    .build();
        }

        return instance;
    }
}
