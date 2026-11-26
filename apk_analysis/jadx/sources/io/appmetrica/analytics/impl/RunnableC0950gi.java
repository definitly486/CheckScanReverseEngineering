package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.gi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0950gi implements Runnable {
    public final /* synthetic */ C0853co a;
    public final /* synthetic */ C1157oi b;

    public RunnableC0950gi(C1157oi c1157oi, C0853co c0853co) {
        this.b = c1157oi;
        this.a = c0853co;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).a(this.a);
    }
}
