package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import defpackage.rz;
import defpackage.ti0;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes5.dex */
public final class B0 implements InterfaceC0866db {
    public static volatile B0 e = null;
    public static volatile boolean f = false;
    public static volatile boolean g;
    public final Context a;
    public final C1294u0 b;
    public final FutureTask c;
    public final Pa d;

    public B0(Context context) {
        this.a = context;
        C1294u0 c1294u0C = C1169p4.l().c();
        this.b = c1294u0C;
        this.d = c1294u0C.a(context, C1169p4.l().g());
        this.c = new FutureTask(new Callable() { // from class: sz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.p();
            }
        });
    }

    public static B0 a(Context context) {
        B0 b0;
        B0 b1 = e;
        if (b1 != null) {
            return b1;
        }
        synchronized (B0.class) {
            try {
                b0 = e;
                if (b0 == null) {
                    b0 = new B0(context);
                    b0.j();
                    C1169p4.l().c.a().execute(new A0(b0));
                    e = b0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b0;
    }

    public static Uc c() {
        return m() ? e.f() : C1169p4.l().b;
    }

    public static void clearAppEnvironment() {
        c().clearAppEnvironment();
    }

    public static synchronized boolean k() {
        return f;
    }

    public static boolean l() {
        return g;
    }

    public static synchronized boolean m() {
        B0 b0;
        b0 = e;
        return (b0 == null || !b0.c.isDone() || b0.f().i() == null) ? false : true;
    }

    public static synchronized void n() {
        e = null;
        f = false;
        g = false;
    }

    public static void putAppEnvironmentValue(String str, String str2) {
        c().putAppEnvironmentValue(str, str2);
    }

    public static synchronized void q() {
        f = true;
    }

    public static void r() {
        g = true;
    }

    public static B0 s() {
        return e;
    }

    public static void setDataSendingEnabled(boolean z) {
        c().setDataSendingEnabled(z);
    }

    public static void setUserProfileID(String str) {
        c().setUserProfileID(str);
    }

    public final void b(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        f().a(appMetricaLibraryAdapterConfig);
        C1169p4.l().c.a().execute(new A1(this.a));
    }

    public final void d(AppMetricaConfig appMetricaConfig) {
        f().b(appMetricaConfig);
        C1169p4.l().c.a().execute(new A1(this.a));
    }

    public final String e() {
        return f().e();
    }

    public final Qa f() {
        try {
            return (Qa) this.c.get();
        } catch (Exception e2) {
            ti0.f(e2);
            return null;
        }
    }

    public final Map<String, String> g() {
        return f().g();
    }

    public final AdvIdentifiersResult h() {
        return f().h();
    }

    public final C1406yc i() {
        return f().i();
    }

    public final void j() {
        C0910f4 c0910f4 = C1169p4.l().c;
        rz rzVar = new rz(this, 0);
        c0910f4.a.getClass();
        new InterruptionSafeThread(rzVar, "IAA-INIT_CORE-" + Ld.a.incrementAndGet()).start();
    }

    public final void o() {
        C1169p4.l().s.a(this.a);
        C1169p4.l().a(this.a).a();
        this.c.run();
    }

    public final Qa p() {
        Qa f0;
        C1294u0 c1294u0 = this.b;
        Context context = this.a;
        Pa pa = this.d;
        synchronized (c1294u0) {
            try {
                f0 = c1294u0.d;
                if (f0 == null) {
                    if (c1294u0.a(context)) {
                        f0 = new H0();
                        c1294u0.d = f0;
                    } else {
                        f0 = new F0(context, pa);
                        c1294u0.d = f0;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f0;
    }

    public final InterfaceC0814bb c(ReporterConfig reporterConfig) {
        return f().c(reporterConfig);
    }

    public final void c(AppMetricaConfig appMetricaConfig) {
        this.d.a(appMetricaConfig, this);
    }

    public static void b(boolean z) {
        c().a(z, true);
    }

    public final C1045ka d() {
        return f().d();
    }

    public final C1246s4 b() {
        return this.d.a();
    }

    public static void a(Location location) {
        c().a(location);
    }

    public static void a(boolean z) {
        c().a(z);
    }

    public static void a(String str, String str2) {
        c().a(str, str2);
    }

    public static void a(String str) {
        c().a(str);
    }

    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        f().a(deferredDeeplinkParametersListener);
    }

    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        f().a(deferredDeeplinkListener);
    }

    public final void a(ReporterConfig reporterConfig) {
        f().a(reporterConfig);
    }

    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        f().a(startupParamsCallback, list);
    }

    public static synchronized void a(B0 b0) {
        e = b0;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0866db
    public final InterfaceC0840cb a() {
        return f().a();
    }
}
