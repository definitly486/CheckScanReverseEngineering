package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.impl.C0880e0;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0880e0 {
    public final C0 a;
    public final C1186pl b;
    public final C0910f4 c;
    public final long d = 10000;

    public C0880e0(C0 c0, C1186pl c1186pl, C0910f4 c0910f4) {
        this.a = c0;
        this.b = c1186pl;
        this.c = c0910f4;
    }

    public final synchronized void a(final Context context, final AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        this.a.getClass();
        if (C0.a()) {
            return;
        }
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Session autotracking enabled", new Object[0]);
        this.b.a();
        this.a.getClass();
        B0 b0A = B0.a(context);
        b0A.d.a(null, b0A);
        IHandlerExecutor iHandlerExecutorA = this.c.a();
        ((M9) iHandlerExecutorA).b.post(new Runnable() { // from class: tt9
            @Override // java.lang.Runnable
            public final void run() {
                C0880e0.a(this.b, context, appMetricaLibraryAdapterConfig);
            }
        });
        this.a.getClass();
        C0.b();
    }

    public static final void a(C0880e0 c0880e0, Context context, AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        c0880e0.a.getClass();
        B0 b0A = B0.a(context);
        b0A.f().a(appMetricaLibraryAdapterConfig);
        C1169p4.l().c.a().execute(new A1(b0A.a));
    }
}
