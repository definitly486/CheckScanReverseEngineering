package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.oi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1157oi implements InterfaceC0814bb {
    public final C0 a;
    public final Hh b;
    public final IHandlerExecutor c;
    public final Context d;
    public final ReporterConfig e;
    public final C1412yi f;
    public final C0844cf g;

    public C1157oi(Context context, Hh hh, C0 c0, C1412yi c1412yi, ReporterConfig reporterConfig, C0844cf c0844cf) {
        this.c = C1169p4.l().g().a();
        this.d = context;
        this.b = hh;
        this.a = c0;
        this.f = c1412yi;
        this.e = reporterConfig;
        this.g = c0844cf;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0814bb, io.appmetrica.analytics.impl.InterfaceC0917fb
    public final void a(C0853co c0853co) {
        this.b.d.validate(c0853co);
        this.f.getClass();
        this.c.execute(new RunnableC0950gi(this, c0853co));
    }

    public final void c(String str) {
        ReporterConfig reporterConfigBuild = ReporterConfig.newConfigBuilder(str).build();
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC0795ai(this, reporterConfigBuild));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void clearAppEnvironment() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC1079li(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final IPluginReporter getPluginExtension() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void pauseSession() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Sh(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void putAppEnvironmentValue(String str, String str2) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC1053ki(this, str, str2));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAdRevenue(AdRevenue adRevenue) {
        this.b.h.validate(adRevenue);
        this.f.getClass();
        this.c.execute(new Wh(this, adRevenue));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAnr(Map<Thread, StackTraceElement[]> map) {
        this.b.j.validate(map);
        this.f.getClass();
        this.c.execute(new RunnableC0976hi(this, CollectionUtils.getListFromMap(map)));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportECommerce(ECommerceEvent eCommerceEvent) {
        this.b.i.validate(eCommerceEvent);
        this.f.getClass();
        this.c.execute(new Yh(this, eCommerceEvent));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, Throwable th) {
        this.b.b.validate(str);
        this.f.getClass();
        if (th == null) {
            th = new C0831c2();
            th.fillInStackTrace();
        }
        this.c.execute(new Oh(this, str, th));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, Map<String, Object> map) {
        this.b.a.validate(str);
        this.f.getClass();
        this.c.execute(new Nh(this, str, CollectionUtils.getListFromMap(map)));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportRevenue(Revenue revenue) {
        this.b.g.validate(revenue);
        this.f.getClass();
        this.c.execute(new Vh(this, revenue));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUnhandledException(Throwable th) {
        this.b.e.validate(th);
        this.f.getClass();
        this.c.execute(new Qh(this, th));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUserProfile(UserProfile userProfile) {
        this.b.f.validate(userProfile);
        this.f.getClass();
        this.c.execute(new Uh(this, userProfile));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void resumeSession() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Rh(this));
    }

    @Override // io.appmetrica.analytics.IReporter, io.appmetrica.analytics.IModuleReporter
    public final void sendEventsBuffer() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC1027ji(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setDataSendingEnabled(boolean z) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Zh(this, z));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void setSessionExtra(String str, byte[] bArr) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC0873di(this, str, bArr));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setUserProfileID(String str) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Th(this, str));
    }

    public static InterfaceC0814bb a(C0 c0, Context context, ReporterConfig reporterConfig) {
        c0.getClass();
        return B0.a(context).f().c(reporterConfig);
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportAdRevenue(AdRevenue adRevenue, boolean z) {
        this.b.h.validate(adRevenue);
        this.f.getClass();
        this.c.execute(new RunnableC0898ei(this, adRevenue, z));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0814bb, io.appmetrica.analytics.impl.InterfaceC1009j0
    public final void a(Y y) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC1001ii(this, y));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, String str2) {
        this.b.a.validate(str);
        this.f.getClass();
        this.c.execute(new RunnableC1131ni(this, str, str2));
    }

    public C1157oi(Context context, String str, C0 c0) {
        this(context, new Hh(), c0, new C1412yi(), ReporterConfig.newConfigBuilder(str).build());
    }

    public final void a(ReporterConfig reporterConfig) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC0821bi(this, reporterConfig));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str) {
        this.b.a.validate(str);
        this.f.getClass();
        this.c.execute(new RunnableC1105mi(this, str));
    }

    public C1157oi(Context context, Hh hh, C0 c0, C1412yi c1412yi, ReporterConfig reporterConfig) {
        this(context, hh, c0, c1412yi, reporterConfig, new C0844cf(new Xh(c0, context, reporterConfig)));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2) {
        reportError(str, str2, null);
    }

    public C1157oi(ICommonExecutor iCommonExecutor, Context context, String str) {
        this(context.getApplicationContext(), str, new C0());
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2, Throwable th) {
        this.b.c.validate(str);
        this.f.getClass();
        this.c.execute(new Ph(this, str, str2, th));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportEvent(ModuleEvent moduleEvent) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC0847ci(this, moduleEvent));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(AppMetricaEvent appMetricaEvent) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new RunnableC0924fi(this, appMetricaEvent));
    }
}
