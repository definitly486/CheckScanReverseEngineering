package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class A0 implements Runnable {
    public final /* synthetic */ B0 a;

    public A0(B0 b0) {
        this.a = b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1169p4.l().c.a().executeDelayed(new RunnableC1420z1(this.a.a), 5000L);
    }
}
