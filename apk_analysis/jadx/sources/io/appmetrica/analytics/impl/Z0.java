package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Z0 implements Runnable {
    public final /* synthetic */ C1370x1 a;

    public Z0(C1370x1 c1370x1) {
        this.a = c1370x1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.a).sendEventsBuffer();
    }
}
