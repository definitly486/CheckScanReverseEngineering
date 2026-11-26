package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1105mi implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ C1157oi b;

    public RunnableC1105mi(C1157oi c1157oi, String str) {
        this.b = c1157oi;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportEvent(this.a);
    }
}
