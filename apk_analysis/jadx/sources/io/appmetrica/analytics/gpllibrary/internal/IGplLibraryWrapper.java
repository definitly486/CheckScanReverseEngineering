package io.appmetrica.analytics.gpllibrary.internal;

/* JADX INFO: loaded from: classes5.dex */
public interface IGplLibraryWrapper {
    void startLocationUpdates(GplLibraryWrapper.Priority priority);

    void stopLocationUpdates();

    void updateLastKnownLocation();
}
