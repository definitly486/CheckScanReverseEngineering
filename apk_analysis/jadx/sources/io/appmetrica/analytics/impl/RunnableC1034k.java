package io.appmetrica.analytics.impl;

import android.app.Activity;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1034k implements Runnable {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ C1086m b;

    public RunnableC1034k(C1086m c1086m, Activity activity) {
        this.b = c1086m;
        this.a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a(this.a);
    }
}
