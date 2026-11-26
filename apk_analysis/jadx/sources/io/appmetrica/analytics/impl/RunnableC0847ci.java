package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ci, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0847ci implements Runnable {
    public final /* synthetic */ ModuleEvent a;
    public final /* synthetic */ C1157oi b;

    public RunnableC0847ci(C1157oi c1157oi, ModuleEvent moduleEvent) {
        this.b = c1157oi;
        this.a = moduleEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportEvent(this.a);
    }
}
