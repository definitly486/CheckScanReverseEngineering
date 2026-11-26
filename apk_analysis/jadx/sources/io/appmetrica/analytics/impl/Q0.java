package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Q0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ C1370x1 b;

    public Q0(C1370x1 c1370x1, String str) {
        this.b = c1370x1;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.c().b.a(this.a, false);
    }
}
