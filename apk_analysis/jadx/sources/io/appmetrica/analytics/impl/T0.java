package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class T0 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ C1370x1 b;

    public T0(C1370x1 c1370x1, boolean z) {
        this.b = c1370x1;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.b.a;
        boolean z = this.a;
        c0.getClass();
        B0.c().a(z);
    }
}
