package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Y0 implements Runnable {
    public final /* synthetic */ Revenue a;
    public final /* synthetic */ C1370x1 b;

    public Y0(C1370x1 c1370x1, Revenue revenue) {
        this.b = c1370x1;
        this.a = revenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportRevenue(this.a);
    }
}
