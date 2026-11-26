package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import defpackage.aa4;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientConfig;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientModule;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1356wc extends W2 implements Wa {
    public static final Long r = 1000L;
    public final Gc p;
    public final C1381xc q;

    public C1356wc(Gc gc) {
        super(gc.b(), gc.i(), gc.h(), gc.d(), gc.f(), gc.j(), gc.g(), gc.c(), gc.a(), gc.e());
        this.p = gc;
        this.q = new C1381xc(this);
        l();
    }

    public final void a(AppMetricaConfig appMetricaConfig, C1139o0 c1139o0) {
        if (c1139o0.b) {
            clearAppEnvironment();
        }
        List<String> list = c1139o0.a;
        if (!CollectionUtils.isNullOrEmpty(list)) {
            this.b.b.addAutoCollectedDataSubscribers(list);
        }
        a(appMetricaConfig.appEnvironment);
        b(appMetricaConfig.errorEnvironment);
        Boolean bool = (Boolean) WrapUtils.getOrDefault(appMetricaConfig.nativeCrashReporting, Boolean.TRUE);
        boolean zBooleanValue = bool.booleanValue();
        this.c.info("native crash reporting enabled: %b", bool);
        if (zBooleanValue) {
            Nd nd = this.p.c;
            Context context = this.a;
            nd.d = new K0(this.b.b.getApiKey(), nd.a.a.getAsString("PROCESS_CFG_PACKAGE_NAME"), CounterConfigurationReporterType.MAIN, nd.a.a.getAsInteger("PROCESS_CFG_PROCESS_ID").intValue(), nd.a.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), this.b.d());
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context);
            String absolutePath = nativeCrashDirectory != null ? nativeCrashDirectory.getAbsolutePath() : null;
            if (absolutePath != null) {
                NativeCrashClientModule nativeCrashClientModule = nd.b;
                L0 l0 = nd.c;
                K0 k0 = nd.d;
                if (k0 == null) {
                    aa4.j("nativeCrashMetadata");
                    throw null;
                }
                l0.getClass();
                nativeCrashClientModule.initHandling(context, new NativeCrashClientConfig(absolutePath, L0.a(k0)));
            }
        }
        C1381xc c1381xc = this.q;
        synchronized (c1381xc) {
            try {
                Integer num = appMetricaConfig.anrMonitoringTimeout;
                c1381xc.a = num != null ? num.intValue() : 5;
                Boolean bool2 = appMetricaConfig.anrMonitoring;
                if (bool2 == null) {
                    bool2 = Boolean.FALSE;
                }
                boolean zBooleanValue2 = bool2.booleanValue();
                C0879e c0879e = c1381xc.b;
                if (zBooleanValue2) {
                    c0879e.a(c1381xc.a);
                } else {
                    c0879e.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void b(Activity activity) {
        if (this.p.i.a(activity, EnumC1164p.PAUSED)) {
            this.c.info("Pause session", new Object[0]);
            c(activity != null ? activity.getClass().getSimpleName() : null);
            C1270t2 c1270t2 = this.p.g;
            synchronized (c1270t2) {
                for (C1244s2 c1244s2 : c1270t2.a) {
                    if (!c1244s2.d) {
                        c1244s2.d = true;
                        c1244s2.b.executeDelayed(c1244s2.e, c1244s2.c);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void c() {
        C1381xc c1381xc = this.q;
        synchronized (c1381xc) {
            c1381xc.b.a(c1381xc.a);
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final List<String> f() {
        return this.b.a.b();
    }

    @Override // io.appmetrica.analytics.impl.W2
    public final String j() {
        return "[MainReporter]";
    }

    @Override // io.appmetrica.analytics.impl.W2
    public final void k() {
        super.k();
        C1169p4.l().m().c();
    }

    public final void l() {
        Ei ei = this.h;
        ei.c.a(this.b.a);
        C1270t2 c1270t2 = this.p.g;
        C1331vc c1331vc = new C1331vc(this);
        long jLongValue = r.longValue();
        synchronized (c1270t2) {
            c1270t2.a(c1331vc, jLongValue);
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(String str, boolean z) {
        this.c.info("App opened via deeplink: " + WrapUtils.wrapToTag(str), new Object[0]);
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        HashMap map = new HashMap();
        map.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
        map.put(DynamicLink.Builder.KEY_LINK, str);
        map.put(TtmlNode.TEXT_EMPHASIS_AUTO, Boolean.valueOf(z));
        String strB = AbstractC1305ub.b(map);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(strB, "", 8208, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(EnumC1112n enumC1112n) {
        EnumC1112n enumC1112n2 = EnumC1112n.b;
        PublicLogger publicLogger = this.c;
        if (enumC1112n == enumC1112n2) {
            publicLogger.info("Enable activity auto tracking", new Object[0]);
            return;
        }
        publicLogger.warning("Could not enable activity auto tracking. " + enumC1112n.a, new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(Activity activity) {
        if (this.p.i.a(activity, EnumC1164p.RESUMED)) {
            this.c.info("Resume session", new Object[0]);
            d(activity != null ? activity.getClass().getSimpleName() : null);
            C1270t2 c1270t2 = this.p.g;
            synchronized (c1270t2) {
                for (C1244s2 c1244s2 : c1270t2.a) {
                    if (c1244s2.d) {
                        c1244s2.d = false;
                        c1244s2.b.remove(c1244s2.e);
                        C1356wc c1356wc = c1244s2.a.a;
                        c1356wc.h.c.b(c1356wc.b.a);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa, io.appmetrica.analytics.impl.Uc
    public final void a(Location location) {
        this.b.b.setManualLocation(location);
        this.c.info("Set location: %s", location);
    }

    @Override // io.appmetrica.analytics.impl.Wa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z) {
        this.b.b.setLocationTracking(z);
    }

    @Override // io.appmetrica.analytics.impl.Wa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z, boolean z2) {
        this.c.info("Set advIdentifiersTracking to %s", Boolean.valueOf(z));
        this.b.b.setAdvIdentifiersTracking(z, z2);
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(Ro ro) {
        PublicLogger publicLogger = this.c;
        synchronized (ro) {
            ro.b = publicLogger;
        }
        Iterator it = ro.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(publicLogger);
        }
        ro.a.clear();
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(AnrListener anrListener) {
        this.q.a(anrListener);
    }

    @Override // io.appmetrica.analytics.impl.Wa
    public final void a(ExternalAttribution externalAttribution) {
        this.c.info("External attribution received: %s", externalAttribution);
        Ei ei = this.h;
        byte[] bytes = externalAttribution.toBytes();
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(bytes, "", 42, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.impl.W2, io.appmetrica.analytics.impl.Wa, io.appmetrica.analytics.impl.Uc
    public final void a(String str, String str2) {
        super.a(str, str2);
        Nd nd = this.p.c;
        String strD = this.b.d();
        K0 k0 = nd.d;
        if (k0 != null) {
            K0 k1 = new K0(k0.a, k0.b, k0.c, k0.d, k0.e, strD);
            nd.d = k1;
            NativeCrashClientModule nativeCrashClientModule = nd.b;
            nd.c.getClass();
            nativeCrashClientModule.updateAppMetricaMetadata(L0.a(k1));
        }
    }

    @Override // io.appmetrica.analytics.impl.Wa, io.appmetrica.analytics.impl.Uc
    public final void a(String str) {
        this.c.info("Add auto collected data subscriber: %s", str);
        this.b.b.addAutoCollectedDataSubscriber(str);
    }
}
