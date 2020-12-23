package com.jiovio.jiolive.network.apis;

import com.jiovio.jiolive.network.model.TvConnection;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Query;

public interface TvConnectionApi {

    @GET("tv_connection_code")
    Call<TvConnection> getConnectionCode(@Header("API-KEY") String apiKey,
                                         @Query("id") String userId);
}
