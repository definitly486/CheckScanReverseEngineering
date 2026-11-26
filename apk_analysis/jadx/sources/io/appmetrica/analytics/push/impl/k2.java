package io.appmetrica.analytics.push.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class k2 implements Runnable {
    public final /* synthetic */ m2 a;

    public k2(m2 m2Var) {
        this.a = m2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m2 m2Var = this.a;
        m2Var.a.a(m2Var.c);
    }
}
