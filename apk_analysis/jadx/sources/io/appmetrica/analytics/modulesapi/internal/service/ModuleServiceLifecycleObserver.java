package io.appmetrica.analytics.modulesapi.internal.service;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleServiceLifecycleObserver {
    void onAllClientsDisconnected();

    void onFirstClientConnected();
}
