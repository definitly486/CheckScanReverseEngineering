package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Zh implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ C1157oi b;

    public Zh(C1157oi c1157oi, boolean z) {
        this.b = c1157oi;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).setDataSendingEnabled(this.a);
    }
}
