package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import defpackage.aa4;
import defpackage.qn1;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class F0 implements Qa {
    public final Context a;
    public final Pa b;
    public final Cif c;
    public final C0902em d;
    public final C1103mg e;
    public final Pf f;
    public final C1234ri g;
    public final Ei h;
    public final P7 i;
    public final C1186pl j;
    public volatile C1406yc k;
    public final C1165p0 l;
    public boolean m;

    public F0(Context context, Pa pa) {
        this.a = context;
        this.b = pa;
        Cif cifB = C1169p4.l().b(context);
        this.c = cifB;
        ArrayList arrayListA = Ed.a();
        C1169p4 c1169p4L = C1169p4.l();
        c1169p4L.m().a(new Y3(context));
        if (c1169p4L.i().b()) {
            G0.a(context).a(qn1.h0(new Ye(Ib.a()).a(), arrayListA));
        }
        Pf pfA = G0.a(context, G0.a(pa.b(), this));
        this.f = pfA;
        P7 p7J = c1169p4L.j();
        this.i = p7J;
        Ei eiA = G0.a(pfA, context, pa.getDefaultExecutor());
        this.h = eiA;
        p7J.a(eiA);
        C0902em c0902emA = G0.a(context, eiA, pa.b());
        this.d = c0902emA;
        eiA.a(c0902emA);
        this.e = G0.a(eiA, cifB, pa.b());
        this.g = G0.a(context, pfA, eiA, pa.b(), c0902emA);
        this.j = c1169p4L.o();
        this.l = new C1165p0(cifB);
    }

    public final void a(PublicLogger publicLogger, AppMetricaConfig appMetricaConfig, boolean z) {
        Boolean bool = appMetricaConfig.logs;
        Boolean bool2 = Boolean.TRUE;
        if (bool2.equals(bool)) {
            publicLogger.setEnabled(true);
            PublicLogger.Companion.getAnonymousInstance().setEnabled(true);
        } else {
            publicLogger.setEnabled(false);
            PublicLogger.Companion.getAnonymousInstance().setEnabled(false);
        }
        boolean zBooleanValue = ((Boolean) WrapUtils.getOrDefault(appMetricaConfig.crashReporting, bool2)).booleanValue();
        Pa pa = this.b;
        if (zBooleanValue) {
            pa.d().a(this.a, appMetricaConfig, this);
            this.b.d().b();
            publicLogger.info("Register application crash handler", new Object[0]);
        } else {
            pa.d().a();
            publicLogger.info("Disable all crash handlers", new Object[0]);
        }
        boolean zBooleanValue2 = ((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, bool2)).booleanValue();
        C1186pl c1186pl = this.j;
        if (zBooleanValue2) {
            c1186pl.a();
        } else {
            synchronized (c1186pl) {
                if (c1186pl.g) {
                    c1186pl.a.unregisterListener(c1186pl.c, ActivityEvent.RESUMED);
                    c1186pl.a.unregisterListener(c1186pl.d, ActivityEvent.PAUSED);
                    c1186pl.g = false;
                }
            }
        }
        this.f.d(appMetricaConfig);
        C0902em c0902em = this.d;
        c0902em.e = publicLogger;
        c0902em.b(appMetricaConfig.customHosts);
        C0902em c0902em2 = this.d;
        Object obj = appMetricaConfig.additionalConfig.get("YMM_clids");
        c0902em2.a(obj instanceof Map ? (Map) obj : null);
        String str = (String) appMetricaConfig.additionalConfig.get("YMM_distributionReferrer");
        this.d.a(str);
        if (str != null) {
            this.d.b("api");
        }
        this.h.a(appMetricaConfig.locationTracking, appMetricaConfig.dataSendingEnabled, appMetricaConfig.advIdentifiersTracking, Boolean.valueOf(z));
        this.d.i();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void b(AppMetricaConfig appMetricaConfig) {
        boolean z;
        PublicLogger orCreateMainPublicLogger = LoggerStorage.getOrCreateMainPublicLogger(appMetricaConfig.apiKey);
        boolean zA = a(orCreateMainPublicLogger, appMetricaConfig, new D0(this, appMetricaConfig, orCreateMainPublicLogger), true);
        if (zA || this.m) {
            z = false;
        } else {
            a(orCreateMainPublicLogger, appMetricaConfig, true);
            if (appMetricaConfig.userProfileID != null) {
                j().setUserProfileID(appMetricaConfig.userProfileID);
            }
            z = true;
        }
        if (zA || z) {
            this.c.a(appMetricaConfig);
        } else {
            orCreateMainPublicLogger.warning("AppMetrica SDK already has been activated", new Object[0]);
        }
        if (zA) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        if (z) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Upgrade AppMetrica anonymous mode to normal with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        this.m = true;
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final InterfaceC0814bb c(ReporterConfig reporterConfig) {
        return this.g.b(reporterConfig);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void clearAppEnvironment() {
        j().clearAppEnvironment();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1045ka d() {
        return this.d.e();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final String e() {
        return this.d.d();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final Map<String, String> g() {
        return this.d.b();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final AdvIdentifiersResult h() {
        return this.d.a();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1406yc i() {
        return this.k;
    }

    public final Wa j() {
        C1406yc c1406yc = this.k;
        c1406yc.getClass();
        return c1406yc.a;
    }

    public final C1234ri k() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void putAppEnvironmentValue(String str, String str2) {
        j().putAppEnvironmentValue(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void setDataSendingEnabled(boolean z) {
        j().setDataSendingEnabled(z);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void setUserProfileID(String str) {
        j().setUserProfileID(str);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        Boolean bool;
        P7 p7 = this.i;
        C1165p0 c1165p0 = this.l;
        C1419z0 c1419z0 = c1165p0.b;
        c1419z0.getClass();
        AppMetricaConfig.Builder builderNewConfigBuilder = AppMetricaConfig.newConfigBuilder("629a824d-c717-4ba5-bc0f-3f3968554d01");
        if (c1419z0.a.b() && aa4.e(c1419z0.b.a, Boolean.TRUE)) {
            builderNewConfigBuilder.handleFirstActivationAsUpdate(true);
        }
        Boolean bool2 = appMetricaLibraryAdapterConfig.advIdentifiersTracking;
        if (bool2 == null) {
            bool2 = Boolean.FALSE;
        }
        builderNewConfigBuilder.withAdvIdentifiersTracking(bool2.booleanValue());
        AppMetricaConfig appMetricaConfigBuild = builderNewConfigBuilder.build();
        AppMetricaConfig.Builder builderF = c1165p0.a.f();
        if (builderF != null) {
            if (builderF.build().advIdentifiersTracking == null && (bool = appMetricaConfigBuild.advIdentifiersTracking) != null) {
                builderF.withAdvIdentifiersTracking(bool.booleanValue());
            }
            appMetricaConfigBuild = builderF.build();
        }
        AppMetricaConfig.Builder builderA = p7.a(appMetricaConfigBuild);
        p7.a(builderA, appMetricaConfigBuild);
        AppMetricaConfig appMetricaConfigBuild2 = builderA.build();
        PublicLogger mainPublicOrAnonymousLogger = LoggerStorage.getMainPublicOrAnonymousLogger();
        if (a(mainPublicOrAnonymousLogger, appMetricaConfigBuild2, new E0(this, appMetricaConfigBuild2, mainPublicOrAnonymousLogger), false)) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica in anonymous mode", new Object[0]);
        }
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.O6
    public final void a(int i, Bundle bundle) {
        this.d.b(bundle, null);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.e.a(deferredDeeplinkParametersListener);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.e.a(deferredDeeplinkListener);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(ReporterConfig reporterConfig) {
        this.g.a(reporterConfig);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        this.d.a(startupParamsCallback, list, AbstractC1305ub.c(this.f.a.getAsString("PROCESS_CFG_CLIDS")));
    }

    public final boolean a(PublicLogger publicLogger, AppMetricaConfig appMetricaConfig, Kc kc, boolean z) {
        if (this.k == null) {
            a(publicLogger, appMetricaConfig, z);
            this.e.a();
            C1356wc c1356wcA = kc.a();
            K7 k7 = new K7(c1356wcA);
            C1406yc c1406yc = new C1406yc(c1356wcA, k7);
            this.b.c().a(k7);
            this.k = c1406yc;
            C1374x5 c1374x5 = this.j.b;
            synchronized (c1374x5) {
                try {
                    c1374x5.a = c1356wcA;
                    Iterator it = c1374x5.b.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC1075le) it.next()).consume(c1356wcA);
                    }
                    c1374x5.b.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        kc.a();
        return false;
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(Location location) {
        j().a(location);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z) {
        j().a(z);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z, boolean z2) {
        j().a(z, z2);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(String str, String str2) {
        j().a(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(String str) {
        j().a(str);
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.InterfaceC0866db
    public final InterfaceC0840cb a() {
        return this.g;
    }
}
