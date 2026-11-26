package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ui, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1312ui implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ C1362wi b;

    public RunnableC1312ui(C1362wi c1362wi, Context context) {
        this.b = c1362wi;
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.b.b;
        Context context = this.a;
        c0.getClass();
        B0.a(context);
    }
}
