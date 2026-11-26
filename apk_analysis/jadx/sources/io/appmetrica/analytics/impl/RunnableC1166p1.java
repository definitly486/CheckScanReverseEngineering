package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1166p1 implements Runnable {
    public final /* synthetic */ AppMetricaEvent a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1166p1(C1370x1 c1370x1, AppMetricaEvent appMetricaEvent) {
        this.b = c1370x1;
        this.a = appMetricaEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportEvent(this.a);
    }
}
