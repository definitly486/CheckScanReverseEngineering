package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Qh implements Runnable {
    public final /* synthetic */ Throwable a;
    public final /* synthetic */ C1157oi b;

    public Qh(C1157oi c1157oi, Throwable th) {
        this.b = c1157oi;
        this.a = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportUnhandledException(this.a);
    }
}
