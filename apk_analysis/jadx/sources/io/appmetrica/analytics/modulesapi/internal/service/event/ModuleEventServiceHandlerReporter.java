package io.appmetrica.analytics.modulesapi.internal.service.event;

import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleEventServiceHandlerReporter {
    String getApiKey();

    boolean isMain();

    void report(CounterReportApi counterReportApi);
}
