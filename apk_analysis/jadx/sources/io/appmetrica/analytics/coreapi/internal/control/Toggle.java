package io.appmetrica.analytics.coreapi.internal.control;

/* JADX INFO: loaded from: classes5.dex */
public interface Toggle {
    boolean getActualState();

    void registerObserver(ToggleObserver toggleObserver, boolean z);

    void removeObserver(ToggleObserver toggleObserver);
}
