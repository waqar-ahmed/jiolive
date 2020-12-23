package com.jiovio.jiolive.models;

public class DownloadInfo {

    private long downloadId;
   private String fileName;
   private int percentage;

    public DownloadInfo() {
    }

    public DownloadInfo(long downloadId, String fileName, int percentage) {
        this.downloadId = downloadId;
        this.fileName = fileName;
        this.percentage = percentage;
    }

    public long getDownloadId() {
        return downloadId;
    }

    public void setDownloadId(long downloadId) {
        this.downloadId = downloadId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public int getPercentage() {
        return percentage;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }
}
