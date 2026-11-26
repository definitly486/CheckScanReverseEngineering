package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1345w1 implements Runnable {
    public final /* synthetic */ Throwable a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1345w1(C1370x1 c1370x1, Throwable th) {
        this.b = c1370x1;
        this.a = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportUnhandledException(this.a);
    }
}
