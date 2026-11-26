package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0855d0 extends SafeRunnable {
    public final /* synthetic */ C0880e0 a;
    public final /* synthetic */ Context b;

    public C0855d0(C0880e0 c0880e0, Context context) {
        this.a = c0880e0;
        this.b = context;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C0880e0 c0880e0 = this.a;
        Context context = this.b;
        c0880e0.getClass();
        c0880e0.a(context, AppMetricaLibraryAdapterConfig.newConfigBuilder().build());
    }
}
