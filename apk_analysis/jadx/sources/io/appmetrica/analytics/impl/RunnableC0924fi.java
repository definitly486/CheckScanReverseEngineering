package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0924fi implements Runnable {
    public final /* synthetic */ AppMetricaEvent a;
    public final /* synthetic */ C1157oi b;

    public RunnableC0924fi(C1157oi c1157oi, AppMetricaEvent appMetricaEvent) {
        this.b = c1157oi;
        this.a = appMetricaEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportEvent(this.a);
    }
}
