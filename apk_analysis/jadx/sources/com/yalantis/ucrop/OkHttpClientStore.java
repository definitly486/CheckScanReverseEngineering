package com.yalantis.ucrop;

import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public class OkHttpClientStore {
    public static final OkHttpClientStore INSTANCE = new OkHttpClientStore();
    private OkHttpClient client;

    private OkHttpClientStore() {
    }

    public OkHttpClient getClient() {
        OkHttpClient okHttpClient = this.client;
        if (okHttpClient != null) {
            return okHttpClient;
        }
        OkHttpClient okHttpClient2 = new OkHttpClient();
        this.client = okHttpClient2;
        return okHttpClient2;
    }

    public void setClient(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }
}
