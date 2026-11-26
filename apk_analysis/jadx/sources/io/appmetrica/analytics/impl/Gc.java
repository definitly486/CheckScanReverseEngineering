package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.PreloadInfo;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class Gc {
    public final Context a;
    public final Ei b;
    public final Nd c;
    public final Z9 d;
    public final O8 e;
    public final Mh f;
    public final C1270t2 g;
    public final E6 h;
    public final C1190q i;
    public final Ve j;
    public final Cdo k;
    public final Hg l;
    public final I6 m;
    public final C0932g0 n;

    public Gc(Context context, Pf pf, Ei ei, C0902em c0902em) {
        this.a = context;
        this.b = ei;
        this.c = new Nd(pf);
        Z9 z9 = new Z9(context);
        this.d = z9;
        O8 o8 = new O8(new Kl(LoggerStorage.getMainPublicOrAnonymousLogger(), "Crash Environment"));
        this.e = o8;
        this.f = new Mh(pf, new CounterConfiguration(CounterConfigurationReporterType.MAIN), o8);
        this.g = new C1270t2();
        this.h = C1169p4.l().n();
        this.i = new C1190q();
        this.j = new Ve(z9);
        this.k = new Cdo();
        this.l = new Hg();
        this.m = new I6();
        this.n = new C0932g0();
    }

    public final void a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        publicLogger.info("Update anonymous config with value " + appMetricaConfig.toJson(), new Object[0]);
        this.f.b.applyFromAnonymousConfig(appMetricaConfig);
        Mh mh = this.f;
        String str = appMetricaConfig.userProfileID;
        synchronized (mh) {
            mh.f = str;
        }
        Mh mh2 = this.f;
        PreloadInfo preloadInfo = appMetricaConfig.preloadInfo;
        Boolean bool = (Boolean) appMetricaConfig.additionalConfig.get("YMM_preloadInfoAutoTracking");
        mh2.d = new Hf(preloadInfo, publicLogger, bool != null ? bool.booleanValue() : false);
    }

    public final void b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        publicLogger.info("Update config with value " + appMetricaConfig.toJson(), new Object[0]);
        this.f.b.applyFromConfig(appMetricaConfig);
        Mh mh = this.f;
        String str = appMetricaConfig.userProfileID;
        synchronized (mh) {
            mh.f = str;
        }
        Mh mh2 = this.f;
        PreloadInfo preloadInfo = appMetricaConfig.preloadInfo;
        Boolean bool = (Boolean) appMetricaConfig.additionalConfig.get("YMM_preloadInfoAutoTracking");
        mh2.d = new Hf(preloadInfo, publicLogger, bool != null ? bool.booleanValue() : false);
        StringBuilder sb = new StringBuilder("Actual session timeout is ");
        Integer num = appMetricaConfig.sessionTimeout;
        if (num == null) {
            num = 10;
        }
        sb.append(num.intValue());
        publicLogger.info(sb.toString(), new Object[0]);
    }

    public final I6 c() {
        return this.m;
    }

    public final Z9 d() {
        return this.d;
    }

    public final Ve e() {
        return this.j;
    }

    public final E6 f() {
        return this.h;
    }

    public final Hg g() {
        return this.l;
    }

    public final Mh h() {
        return this.f;
    }

    public final Ei i() {
        return this.b;
    }

    public final Cdo j() {
        return this.k;
    }

    public final C0932g0 a() {
        return this.n;
    }

    public final Context b() {
        return this.a;
    }
}
