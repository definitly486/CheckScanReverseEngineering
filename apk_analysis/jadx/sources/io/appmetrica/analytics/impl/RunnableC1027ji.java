package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ji, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1027ji implements Runnable {
    public final /* synthetic */ C1157oi a;

    public RunnableC1027ji(C1157oi c1157oi) {
        this.a = c1157oi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.a;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).sendEventsBuffer();
    }
}
