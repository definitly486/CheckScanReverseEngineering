package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.di, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0873di implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ byte[] b;
    public final /* synthetic */ C1157oi c;

    public RunnableC0873di(C1157oi c1157oi, String str, byte[] bArr) {
        this.c = c1157oi;
        this.a = str;
        this.b = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.c;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).setSessionExtra(this.a, this.b);
    }
}
