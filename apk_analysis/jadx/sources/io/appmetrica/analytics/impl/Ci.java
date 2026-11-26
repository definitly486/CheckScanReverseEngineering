package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Ci implements Runnable {
    public final /* synthetic */ Di a;

    public Ci(Di di) {
        this.a = di;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.c();
    }
}
