package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends AppMetricaEvent {
    public final AppMetricaEventData a;

    public q(AppMetricaEventData appMetricaEventData) {
        this.a = appMetricaEventData;
    }

    @Override // io.appmetrica.analytics.coreapi.event.AppMetricaEvent
    public final AppMetricaEventData getEventData() {
        return this.a;
    }
}
