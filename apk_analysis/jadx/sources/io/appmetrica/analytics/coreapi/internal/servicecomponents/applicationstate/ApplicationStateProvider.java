package io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate;

/* JADX INFO: loaded from: classes5.dex */
public interface ApplicationStateProvider {
    ApplicationState getCurrentState();

    ApplicationState registerStickyObserver(ApplicationStateObserver applicationStateObserver);
}
