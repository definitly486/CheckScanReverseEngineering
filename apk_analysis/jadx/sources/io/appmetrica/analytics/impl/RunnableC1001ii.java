package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ii, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1001ii implements Runnable {
    public final /* synthetic */ Y a;
    public final /* synthetic */ C1157oi b;

    public RunnableC1001ii(C1157oi c1157oi, Y y) {
        this.b = c1157oi;
        this.a = y;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).a(this.a);
    }
}
