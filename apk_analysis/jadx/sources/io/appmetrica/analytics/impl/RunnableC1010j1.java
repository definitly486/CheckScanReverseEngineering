package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1010j1 implements Runnable {
    public final /* synthetic */ C1370x1 a;

    public RunnableC1010j1(C1370x1 c1370x1) {
        this.a = c1370x1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a.getClass();
        B0.c().clearAppEnvironment();
    }
}
