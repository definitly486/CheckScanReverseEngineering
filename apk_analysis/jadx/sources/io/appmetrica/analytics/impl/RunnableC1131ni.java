package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ni, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1131ni implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ C1157oi c;

    public RunnableC1131ni(C1157oi c1157oi, String str, String str2) {
        this.c = c1157oi;
        this.a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.c;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportEvent(this.a, this.b);
    }
}
