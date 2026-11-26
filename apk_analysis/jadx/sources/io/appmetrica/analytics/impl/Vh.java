package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Vh implements Runnable {
    public final /* synthetic */ Revenue a;
    public final /* synthetic */ C1157oi b;

    public Vh(C1157oi c1157oi, Revenue revenue) {
        this.b = c1157oi;
        this.a = revenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportRevenue(this.a);
    }
}
