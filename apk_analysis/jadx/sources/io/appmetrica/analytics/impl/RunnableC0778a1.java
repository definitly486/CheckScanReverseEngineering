package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0778a1 implements Runnable {
    public final /* synthetic */ AdRevenue a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC0778a1(C1370x1 c1370x1, AdRevenue adRevenue) {
        this.b = c1370x1;
        this.a = adRevenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportAdRevenue(this.a);
    }
}
