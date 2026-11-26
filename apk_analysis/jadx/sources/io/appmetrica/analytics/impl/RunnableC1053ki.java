package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ki, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1053ki implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ C1157oi c;

    public RunnableC1053ki(C1157oi c1157oi, String str, String str2) {
        this.c = c1157oi;
        this.a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.c;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).putAppEnvironmentValue(this.a, this.b);
    }
}
