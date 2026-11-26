package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ei, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0898ei implements Runnable {
    public final /* synthetic */ AdRevenue a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ C1157oi c;

    public RunnableC0898ei(C1157oi c1157oi, AdRevenue adRevenue, boolean z) {
        this.c = c1157oi;
        this.a = adRevenue;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.c;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportAdRevenue(this.a, this.b);
    }
}
