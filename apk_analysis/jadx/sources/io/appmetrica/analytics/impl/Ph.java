package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Ph implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Throwable c;
    public final /* synthetic */ C1157oi d;

    public Ph(C1157oi c1157oi, String str, String str2, Throwable th) {
        this.d = c1157oi;
        this.a = str;
        this.b = str2;
        this.c = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.d;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportError(this.a, this.b, this.c);
    }
}
