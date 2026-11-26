package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0821bi implements Runnable {
    public final /* synthetic */ ReporterConfig a;
    public final /* synthetic */ C1157oi b;

    public RunnableC0821bi(C1157oi c1157oi, ReporterConfig reporterConfig) {
        this.b = c1157oi;
        this.a = reporterConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        ReporterConfig reporterConfig = this.a;
        C0 c0 = c1157oi.a;
        Context context = c1157oi.d;
        c0.getClass();
        B0.a(context).f().a(reporterConfig);
    }
}
