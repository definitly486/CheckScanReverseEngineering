package io.appmetrica.analytics.modulesapi.internal.network;

/* JADX INFO: loaded from: classes5.dex */
public interface NetworkClientWithCacheControl {
    String getETag();

    void onError();

    void onNotModified();

    void onResponse(String str, byte[] bArr);
}
