package com.warefly.checkscan;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.camera.camera2.Camera2Config;
import androidx.camera.core.CameraXConfig;
import androidx.multidex.MultiDexApplication;
import androidx.work.Configuration;
import androidx.work.WorkManager;
import com.google.firebase.FirebaseApp;
import com.google.firebase.perf.metrics.Trace;
import com.warefly.checkscan.component.logger.CrashlyticsException;
import com.yandex.mobile.ads.common.YandexAds;
import defpackage.aa4;
import defpackage.au2;
import defpackage.b36;
import defpackage.be0;
import defpackage.bm6;
import defpackage.co3;
import defpackage.d97;
import defpackage.dd5;
import defpackage.ef8;
import defpackage.fd;
import defpackage.fs6;
import defpackage.gd;
import defpackage.ge2;
import defpackage.gh4;
import defpackage.h;
import defpackage.h5;
import defpackage.hd;
import defpackage.hg4;
import defpackage.hh5;
import defpackage.i13;
import defpackage.ia7;
import defpackage.ig4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jg4;
import defpackage.k74;
import defpackage.kd;
import defpackage.kg4;
import defpackage.lx2;
import defpackage.m00;
import defpackage.ml5;
import defpackage.n05;
import defpackage.na1;
import defpackage.ni0;
import defpackage.nl3;
import defpackage.oc8;
import defpackage.p41;
import defpackage.pe;
import defpackage.pj6;
import defpackage.pm2;
import defpackage.qn1;
import defpackage.qr7;
import defpackage.qv8;
import defpackage.r59;
import defpackage.rh5;
import defpackage.s0;
import defpackage.sa0;
import defpackage.tw;
import defpackage.u96;
import defpackage.uo4;
import defpackage.wc5;
import defpackage.wt2;
import defpackage.wt7;
import defpackage.x07;
import defpackage.z53;
import defpackage.z56;
import defpackage.zu0;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.UUID;
import org.conscrypt.Conscrypt;

/* JADX INFO: loaded from: classes5.dex */
public class CheckScanApplication extends MultiDexApplication implements CameraXConfig.Provider, Configuration.Provider {
    public static Context c;
    public static String d;
    public final ni0 b = new ni0(1);

    public static final class a {
        public static Context a() {
            Context context = CheckScanApplication.c;
            if (context != null) {
                return context;
            }
            aa4.j("appContext");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<ig4, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ig4 ig4Var) {
            ig4 ig4Var2 = ig4Var;
            ig4Var2.getClass();
            hg4 hg4Var = ig4Var2.a;
            lx2 lx2Var = hg4Var.a;
            uo4 uo4Var = uo4.INFO;
            if (((uo4) lx2Var.a).compareTo(uo4Var) <= 0) {
                lx2Var.getClass();
                lx2Var.a(uo4Var, "[init] declare Android Context");
            }
            CheckScanApplication checkScanApplication = CheckScanApplication.this;
            hg4Var.b(u96.h(h.c(new kg4(checkScanApplication, 0))), true, false);
            ArrayList arrayListH0 = qn1.h0(zu0.a, u96.i(wc5.a, pe.a, ml5.a, ge2.a, oc8.a, k74.a, pj6.a, sa0.a, tw.a, bm6.a, h5.a, z53.a, pm2.a, wt7.a, z56.a, ia7.a, ef8.a, co3.a, fd.a, p41.a));
            boolean z = ig4Var2.b;
            if (((uo4) lx2Var.a).compareTo(uo4Var) <= 0) {
                long jB = dd5.b();
                hg4Var.b(arrayListH0, z, false);
                long jA = qv8.a.C0320a.a(jB);
                hg4Var.d.b.size();
                wt2.a aVar = wt2.c;
                wt2.k(jA, au2.MICROSECONDS);
                uo4Var.getClass();
            } else {
                hg4Var.b(arrayListH0, z, false);
            }
            String string = checkScanApplication.getResources().getString(R.string.server_host);
            string.getClass();
            Map mapE = n05.e(new b36("server_host", string), new b36("location_by_ip_base_url", checkScanApplication.getResources().getString(R.string.location_by_ip_url)), new b36("ofd_base_url", checkScanApplication.getResources().getString(R.string.ofd_base_url)), new b36("sse_url", string.concat("/v1/sse/event/subscribe")));
            fs6 fs6Var = hg4Var.e;
            fs6Var.getClass();
            lx2 lx2Var2 = fs6Var.a.a;
            String str = "load " + mapE.size() + " properties";
            lx2Var2.getClass();
            lx2Var2.a(uo4.DEBUG, str);
            fs6Var.b.putAll(mapE);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            s0.c("RxJavaPlugins unhandledError " + th.getLocalizedMessage());
            return j59.a;
        }
    }

    @Override // androidx.camera.core.CameraXConfig.Provider
    public final CameraXConfig getCameraXConfig() {
        return Camera2Config.Companion.defaultConfig();
    }

    @Override // androidx.work.Configuration.Provider
    public final Configuration getWorkManagerConfiguration() {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorClear;
        Configuration configurationBuild = new Configuration.Builder().build();
        configurationBuild.getInitializationExceptionHandler();
        deleteDatabase("WorkManagerImpl");
        SharedPreferences sharedPreferences = getSharedPreferences("WorkManagerImpl", 0);
        if (sharedPreferences != null && (editorEdit = sharedPreferences.edit()) != null && (editorClear = editorEdit.clear()) != null) {
            editorClear.apply();
        }
        WorkManager.Companion.initialize(this, new Configuration.Builder().build());
        return configurationBuild;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Application
    public final void onCreate() {
        hg4 hg4VarB;
        super.onCreate();
        Trace traceCreate = Trace.create("app_conscrypt");
        traceCreate.getClass();
        traceCreate.start();
        try {
            Security.insertProviderAt(Conscrypt.newProvider(), 1);
        } catch (Throwable th) {
            try {
                s0.d(new CrashlyticsException.Conscrypt("Conscrypt: ".concat(i13.a(th))));
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                traceCreate.stop();
                throw th2;
            }
        }
        traceCreate.stop();
        Context applicationContext = getApplicationContext();
        applicationContext.getClass();
        c = applicationContext;
        String string = UUID.randomUUID().toString();
        string.getClass();
        d = string;
        Trace traceCreate2 = Trace.create("app_koin");
        traceCreate2.getClass();
        traceCreate2.start();
        try {
            m00.f(new b());
            traceCreate2.stop();
            Trace traceCreate3 = Trace.create("app_moxy");
            traceCreate3.getClass();
            traceCreate3.start();
            try {
                hh5.a();
                j59 j59Var2 = j59.a;
                traceCreate3.stop();
                d97.a = new be0(c.f, 1);
                AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
                Trace traceCreate4 = Trace.create("app_firebase");
                traceCreate4.getClass();
                traceCreate4.start();
                try {
                    FirebaseApp.initializeApp(a.a());
                    traceCreate4.stop();
                    Trace traceCreate5 = Trace.create("app_prefs_first_read");
                    traceCreate5.getClass();
                    traceCreate5.start();
                    try {
                        qr7.o0.getClass();
                        boolean zY = ((qr7) qr7.q0.getValue()).Y();
                        traceCreate5.stop();
                        Trace traceCreate6 = Trace.create("app_analytics_init");
                        traceCreate6.getClass();
                        traceCreate6.start();
                        try {
                            gd.a aVar = gd.a;
                            Context applicationContext2 = getApplicationContext();
                            applicationContext2.getClass();
                            na1 na1Var = new na1(this);
                            if (gd.b == null) {
                                synchronized (aVar) {
                                    if (gd.b == null) {
                                        hd hdVar = new hd();
                                        gd.b = hdVar;
                                        gd.c = applicationContext2;
                                        gd.d = zY;
                                        gd.e = na1Var;
                                        hdVar.b();
                                    }
                                }
                            }
                            traceCreate6.stop();
                            Trace traceCreate7 = Trace.create("app_unity_offerwall_interrupted");
                            traceCreate7.getClass();
                            traceCreate7.start();
                            try {
                                if (this instanceof jg4) {
                                    hg4VarB = ((jg4) this).b();
                                } else {
                                    hg4VarB = defpackage.c.d;
                                    if (hg4VarB == null) {
                                        throw new IllegalStateException("KoinApplication has not been started");
                                    }
                                }
                                jf6 jf6Var = ((r59) hg4VarB.c.d.e(x07.a(r59.class), null, null)).a;
                                if (jf6Var.u()) {
                                    jf6Var.G(false);
                                    Map mapSingletonMap = Collections.singletonMap("SDK", "Interrupted");
                                    mapSingletonMap.getClass();
                                    new kd.t0.c("Unity Offerwall", mapSingletonMap).c();
                                }
                                traceCreate7.stop();
                                Trace traceCreate8 = Trace.create("app_ads_init");
                                traceCreate8.getClass();
                                traceCreate8.start();
                                try {
                                    rh5.a(this);
                                    YandexAds.initialize(this, this.b);
                                } finally {
                                    traceCreate8.stop();
                                }
                            } catch (Throwable th3) {
                                traceCreate7.stop();
                                throw th3;
                            }
                        } catch (Throwable th4) {
                            traceCreate6.stop();
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        traceCreate5.stop();
                        throw th5;
                    }
                } catch (Throwable th6) {
                    traceCreate4.stop();
                    throw th6;
                }
            } catch (Throwable th7) {
                traceCreate3.stop();
                throw th7;
            }
        } catch (Throwable th8) {
            traceCreate2.stop();
            throw th8;
        }
    }
}
