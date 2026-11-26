package io.appmetrica.analytics.modulesapi.internal.service;

/* JADX INFO: loaded from: classes5.dex */
public interface ServiceWakeLock {
    boolean acquireWakeLock(String str);

    void releaseWakeLock(String str);
}
