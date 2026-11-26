package com.google.android.gms.common.api;

/* JADX INFO: loaded from: classes4.dex */
public class ApiException extends Exception {

    @Deprecated
    public final Status b;

    public ApiException(Status status) {
        int statusCode = status.getStatusCode();
        String statusMessage = status.getStatusMessage() != null ? status.getStatusMessage() : "";
        StringBuilder sb = new StringBuilder(String.valueOf(statusCode).length() + 2 + String.valueOf(statusMessage).length());
        sb.append(statusCode);
        sb.append(": ");
        sb.append(statusMessage);
        super(sb.toString());
        this.b = status;
    }

    public Status getStatus() {
        return this.b;
    }

    public int getStatusCode() {
        return this.b.getStatusCode();
    }

    @Deprecated
    public String getStatusMessage() {
        return this.b.getStatusMessage();
    }
}
