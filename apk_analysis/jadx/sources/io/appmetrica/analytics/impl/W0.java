package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class W0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ C1370x1 b;

    public W0(C1370x1 c1370x1, String str) {
        this.b = c1370x1;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.b.a;
        String str = this.a;
        c0.getClass();
        B0.c().setUserProfileID(str);
    }
}
