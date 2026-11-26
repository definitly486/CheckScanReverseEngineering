package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;

/* JADX INFO: loaded from: classes5.dex */
public final class Xh implements Provider {
    public final /* synthetic */ C0 a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ ReporterConfig c;

    public Xh(C0 c0, Context context, ReporterConfig reporterConfig) {
        this.a = c0;
        this.b = context;
        this.c = reporterConfig;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Provider
    public final Object get() {
        C0 c0 = this.a;
        Context context = this.b;
        ReporterConfig reporterConfig = this.c;
        c0.getClass();
        return B0.a(context).f().c(reporterConfig);
    }
}
