package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkListener;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0856d1 implements Runnable {
    public final /* synthetic */ DeferredDeeplinkListener a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC0856d1(C1370x1 c1370x1, DeferredDeeplinkListener deferredDeeplinkListener) {
        this.b = c1370x1;
        this.a = deferredDeeplinkListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a.getClass();
        B0 b0 = B0.e;
        b0.f().a(this.a);
    }
}
