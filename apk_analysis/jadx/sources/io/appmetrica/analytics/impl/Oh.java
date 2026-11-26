package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Oh implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ Throwable b;
    public final /* synthetic */ C1157oi c;

    public Oh(C1157oi c1157oi, String str, Throwable th) {
        this.c = c1157oi;
        this.a = str;
        this.b = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.c;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportError(this.a, this.b);
    }
}
