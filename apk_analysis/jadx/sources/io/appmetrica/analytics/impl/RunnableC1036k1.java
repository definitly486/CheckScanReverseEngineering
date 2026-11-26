package io.appmetrica.analytics.impl;

import android.app.Activity;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1036k1 implements Runnable {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1036k1(C1370x1 c1370x1, Activity activity) {
        this.b = c1370x1;
        this.a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1 c1370x1 = this.b;
        C1186pl c1186pl = c1370x1.h;
        Activity activity = this.a;
        Wa wa = c1370x1.c().a;
        if (activity != null) {
            c1186pl.f.a(activity);
        }
        if (c1186pl.e.a(activity, EnumC1164p.RESUMED)) {
            wa.a(activity);
        }
    }
}
