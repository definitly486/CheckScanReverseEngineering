package io.appmetrica.analytics.coreapi.internal.cache;

/* JADX INFO: loaded from: classes5.dex */
public interface CacheUpdateScheduler {
    void onStateUpdated();

    void scheduleUpdateIfNeededNow();
}
