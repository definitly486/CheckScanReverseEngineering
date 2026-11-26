package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Wh implements Runnable {
    public final /* synthetic */ AdRevenue a;
    public final /* synthetic */ C1157oi b;

    public Wh(C1157oi c1157oi, AdRevenue adRevenue) {
        this.b = c1157oi;
        this.a = adRevenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportAdRevenue(this.a);
    }
}
