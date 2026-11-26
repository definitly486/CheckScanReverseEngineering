package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0882e2 implements Runnable {
    public final /* synthetic */ InterfaceC1075le a;
    public final /* synthetic */ K7 b;

    public RunnableC0882e2(C0934g2 c0934g2, K7 k7) {
        this.a = c0934g2;
        this.b = k7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.consume(this.b);
    }
}
