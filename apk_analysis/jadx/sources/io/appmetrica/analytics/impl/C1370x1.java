package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.webkit.WebView;
import defpackage.s41;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.internal.js.AppMetricaInitializerJsInterface;
import io.appmetrica.analytics.internal.js.AppMetricaJsInterface;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1370x1 {
    public final C0 a;
    public final Ro b;
    public final C1362wi c;
    public final P7 d;
    public final Al e;
    public final P2 f;
    public final C1265sn g;
    public final C1186pl h;

    public C1370x1(C0 c0, Ro ro) {
        this(c0, new P2(c0), new Al(c0), ro, new C1265sn(c0, ro), C1362wi.a(), C1169p4.l().j(), C1169p4.l().o());
    }

    public final void a(Context context, ReporterConfig reporterConfig) {
        P2 p2 = this.f;
        p2.f.validate(context);
        p2.h.validate(reporterConfig);
        C1265sn c1265sn = this.g;
        c1265sn.e.a(context.getApplicationContext());
        C1362wi c1362wi = this.c;
        Context applicationContext = context.getApplicationContext();
        if (((C1157oi) c1362wi.a.get(reporterConfig.apiKey)) == null) {
            synchronized (c1362wi.a) {
                try {
                    if (((C1157oi) c1362wi.a.get(reporterConfig.apiKey)) == null) {
                        String str = reporterConfig.apiKey;
                        IHandlerExecutor iHandlerExecutorA = C1169p4.l().c.a();
                        c1362wi.b.getClass();
                        if (B0.e == null) {
                            ((M9) iHandlerExecutorA).b.post(new RunnableC1312ui(c1362wi, applicationContext));
                        }
                        C1157oi c1157oi = new C1157oi(applicationContext.getApplicationContext(), str, new C0());
                        c1362wi.a.put(str, c1157oi);
                        c1157oi.a(reporterConfig);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void b(Context context, AppMetricaConfig appMetricaConfig) {
        C0 c0 = this.a;
        Context applicationContext = context.getApplicationContext();
        c0.getClass();
        B0 b0A = B0.a(applicationContext);
        b0A.f().b(this.d.d(appMetricaConfig));
        Context context2 = b0A.a;
        ((M9) C1169p4.l().c.a()).execute(new A1(context2));
    }

    public final void c(String str) {
        if (this.e.validate(null).isValid() && this.f.m.validate(str).isValid()) {
            this.g.getClass();
            IHandlerExecutor iHandlerExecutorB = b();
            ((M9) iHandlerExecutorB).b.post(new RunnableC0959h1(this, str));
        }
    }

    public final void d(String str, String str2) {
        P2 p2 = this.f;
        p2.a.validate(null);
        if (p2.n.validate(str).isValid()) {
            this.g.getClass();
            IHandlerExecutor iHandlerExecutorB = b();
            ((M9) iHandlerExecutorB).b.post(new RunnableC0933g1(this, str, str2));
        }
    }

    public final void e() {
        this.f.a.validate(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new Z0(this));
    }

    public C1370x1() {
        this(C1169p4.l().d(), new Ro());
    }

    public final void d(String str) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new W0(this, str));
    }

    public C1370x1(C0 c0, P2 p2, Al al, Ro ro, C1265sn c1265sn, C1362wi c1362wi, P7 p7, C1186pl c1186pl) {
        this.a = c0;
        this.b = ro;
        this.c = c1362wi;
        this.d = p7;
        this.f = p2;
        this.g = c1265sn;
        this.e = al;
        this.h = c1186pl;
    }

    public final void d() {
        c().a.a(this.h.a());
    }

    public static IHandlerExecutor b() {
        return C1169p4.l().c.a();
    }

    public final void c(Activity activity) {
        this.f.a.validate(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1036k1(this, activity));
    }

    public final void b(String str) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.r.validate(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1217r1(this, str));
    }

    public final void c(String str, String str2) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.r.validate(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1243s1(this, str, str2));
    }

    public final void b(Activity activity) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.c.validate(activity);
        this.g.getClass();
        Intent intentA = C1265sn.a(activity);
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new P0(this, intentA));
    }

    public final void c(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new T0(this, z));
    }

    public final void b(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new V0(this, z));
    }

    public final C1406yc c() {
        this.a.getClass();
        return B0.e.f().i();
    }

    public final void b(String str, String str2) {
        this.f.k.validate(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0881e1(this, str, str2));
    }

    public final void c(Context context) {
        this.f.f.validate(context);
        this.g.e.a(context);
        this.a.getClass();
        B0.a(context);
    }

    public final IdentifiersResult b(Context context) {
        this.f.f.validate(context);
        C1265sn c1265sn = this.g;
        Context applicationContext = context.getApplicationContext();
        c1265sn.e.a(applicationContext);
        c1265sn.f.a(applicationContext);
        return C1169p4.l().a(context.getApplicationContext()).a();
    }

    public final void b(Object... objArr) {
        this.f.a.validate(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new s41(objArr, 2));
    }

    public final void a(Activity activity) {
        this.f.a.validate(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1192q1(this, activity));
    }

    public final void a(Application application) {
        this.f.e.validate(application);
        this.g.c.a(application);
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new defpackage.x(this, 6));
    }

    public final void a(String str, Map<String, Object> map) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.r.validate(str);
        this.g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1269t1(this, str, listFromMap));
    }

    public final void a(String str, Throwable th) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.s.validate(str);
        this.g.getClass();
        if (th == null) {
            th = new C0831c2();
            th.fillInStackTrace();
        }
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1295u1(this, str, th));
    }

    public final void a(String str, String str2, Throwable th) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.t.validate(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1320v1(this, str, str2, th));
    }

    public final void a(Throwable th) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.u.validate(th);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1345w1(this, th));
    }

    public final void a(String str) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.i.validate(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new Q0(this, str));
    }

    public final void a(Intent intent) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.d.validate(intent);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new R0(this, intent));
    }

    public final void a(Location location) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new S0(this, location));
    }

    public final void a(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new U0(this, z));
    }

    public final void a(UserProfile userProfile) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.v.validate(userProfile);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new X0(this, userProfile));
    }

    public final void a(Revenue revenue) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.w.validate(revenue);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new Y0(this, revenue));
    }

    public final void a(AdRevenue adRevenue) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.x.validate(adRevenue);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0778a1(this, adRevenue));
    }

    public final void a(ECommerceEvent eCommerceEvent) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.y.validate(eCommerceEvent);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0804b1(this, eCommerceEvent));
    }

    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.g.validate(deferredDeeplinkParametersListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0830c1(this, deferredDeeplinkParametersListener));
    }

    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.g.validate(deferredDeeplinkListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0856d1(this, deferredDeeplinkListener));
    }

    public final InterfaceC0814bb a(Context context, String str) {
        P2 p2 = this.f;
        p2.f.validate(context);
        p2.j.validate(str);
        C1265sn c1265sn = this.g;
        c1265sn.e.a(context.getApplicationContext());
        return this.c.a(context.getApplicationContext(), str);
    }

    public final void a(final Context context, final AppMetricaConfig appMetricaConfig) {
        P2 p2 = this.f;
        p2.f.validate(context);
        p2.b.validate(appMetricaConfig);
        C1265sn c1265sn = this.g;
        Context applicationContext = context.getApplicationContext();
        c1265sn.e.a(applicationContext);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(appMetricaConfig.apiKey);
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, Boolean.TRUE)).booleanValue()) {
            orCreatePublicLogger.info("Session auto tracking enabled", new Object[0]);
            c1265sn.d.a();
        } else {
            orCreatePublicLogger.info("Session auto tracking disabled", new Object[0]);
        }
        c1265sn.a.getClass();
        B0 b0A = B0.a(applicationContext);
        b0A.d.a(appMetricaConfig, b0A);
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new Runnable() { // from class: bha
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(context, appMetricaConfig);
            }
        });
        this.a.getClass();
        C0.b();
    }

    public final void a(WebView webView) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.l.validate(webView);
        Ro ro = this.g.b;
        ro.getClass();
        try {
            if (webView.getSettings().getJavaScriptEnabled()) {
                webView.addJavascriptInterface(new AppMetricaJsInterface(this), "AppMetrica");
                webView.addJavascriptInterface(new AppMetricaInitializerJsInterface(this), "AppMetricaInitializer");
                Oo oo = new Oo();
                synchronized (ro) {
                    try {
                        PublicLogger publicLogger = ro.b;
                        if (publicLogger == null) {
                            ro.a.add(oo);
                        } else {
                            oo.consume(publicLogger);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else {
                ro.a(new Po());
            }
        } catch (Throwable th2) {
            ro.a(new Qo(th2));
        }
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0907f1(this));
    }

    public final String a(Context context) {
        this.f.f.validate(context);
        C1265sn c1265sn = this.g;
        c1265sn.e.a(context.getApplicationContext());
        IdentifiersResult identifiersResult = (IdentifiersResult) C1169p4.l().d(context.getApplicationContext()).b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.id;
    }

    public final void a(String str, String str2) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC0985i1(this, str, str2));
    }

    public final void a() {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1010j1(this));
    }

    public final void a(Context context, StartupParamsCallback startupParamsCallback, List<String> list) {
        P2 p2 = this.f;
        p2.f.validate(context);
        p2.o.validate(startupParamsCallback);
        C1265sn c1265sn = this.g;
        c1265sn.e.a(context.getApplicationContext());
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1062l1(this, context, startupParamsCallback, list));
    }

    public final void a(AnrListener anrListener) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.p.validate(anrListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1088m1(this, anrListener));
    }

    public final void a(ExternalAttribution externalAttribution) {
        P2 p2 = this.f;
        p2.a.validate(null);
        p2.q.validate(externalAttribution);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1114n1(this, externalAttribution));
    }

    public static /* synthetic */ void a(Object[] objArr) {
        ModuleAdRevenueProcessor moduleAdRevenueProcessorB = C1169p4.l().m().b();
        if (moduleAdRevenueProcessorB != null) {
            moduleAdRevenueProcessorB.process(objArr);
        }
    }

    public final void a(Map<Thread, StackTraceElement[]> map) {
        this.f.z.validate(map);
        this.g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1140o1(this, listFromMap));
    }

    public final void a(AppMetricaEvent appMetricaEvent) {
        this.f.a.validate(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorB = b();
        ((M9) iHandlerExecutorB).b.post(new RunnableC1166p1(this, appMetricaEvent));
    }

    public static Wa a(C1370x1 c1370x1) {
        return c1370x1.c().a;
    }
}
