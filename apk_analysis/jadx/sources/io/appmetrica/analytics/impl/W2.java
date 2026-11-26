package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import defpackage.me0;
import defpackage.qn1;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import io.appmetrica.analytics.profile.UserProfile;
import io.appmetrica.analytics.profile.UserProfileUpdate;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class W2 implements Ra {
    public static final HashSet n = new HashSet(Arrays.asList(1, 13));
    public static final U2 o = new U2();
    protected final Context a;
    protected final Mh b;
    protected final PublicLogger c;
    protected final Cdo d;
    protected final Hg e;
    protected final I6 f;
    public final C0932g0 g;
    protected final Ei h;
    public Cb i;
    public final Qf j;
    public final Z9 k;
    public final Ve l;
    public final C1239rn m;

    public W2(Context context, Ei ei, Mh mh, Z9 z9, E6 e6, Cdo cdo, Hg hg, I6 i6, C0932g0 c0932g0, Ve ve) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.h = ei;
        this.b = mh;
        this.k = z9;
        this.d = cdo;
        this.e = hg;
        this.f = i6;
        this.g = c0932g0;
        this.l = ve;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(mh.b().getApiKey());
        this.c = orCreatePublicLogger;
        if (AbstractC1064l3.a(mh.b().isLogEnabled())) {
            orCreatePublicLogger.setEnabled(true);
        }
        this.j = e6;
        this.m = new C1239rn(applicationContext);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0814bb, io.appmetrica.analytics.impl.InterfaceC1009j0
    public final void a(Y y) {
        C0906f0 c0906f0 = new C0906f0(y, (String) this.k.b.a(), (Boolean) this.k.c.a());
        Ei ei = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.g.fromModel(c0906f0));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, "", 5968, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        String str = null;
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        PublicLogger publicLogger2 = this.c;
        StringBuilder sb = new StringBuilder("ANR was reported ");
        Kn kn = y.a;
        if (kn != null) {
            str = "Thread[name=" + kn.a + ",tid={" + kn.c + ", priority=" + kn.b + ", group=" + kn.d + "}] at " + qn1.a0(kn.f, "\n", null, null, 0, null, 62);
        }
        sb.append(str);
        publicLogger2.info(sb.toString(), new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Ra
    public final void b(String str, String str2) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(str2, str, 1, 0, publicLogger);
        c0781a4.l = EnumC1403y9.JS;
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    public final void c(String str) {
        if (this.b.f()) {
            return;
        }
        this.h.d.d();
        Cb cb = this.i;
        cb.a.removeCallbacks(cb.c, cb.b.b.b.getApiKey());
        this.b.e = true;
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4("", str, 3, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void clearAppEnvironment() {
        String str;
        this.c.info("Clear app environment", new Object[0]);
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        C0783a6 c0783a6N = C0781a4.n();
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        ei.a(new Ch(c0783a6N, false, 1, null, new Mh(pf, counterConfiguration, o8, str)));
    }

    public final void d(String str) {
        this.h.d.c();
        Cb cb = this.i;
        Cb.a(cb.a, cb.b, cb.c);
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4("", str, 6400, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.b.e = false;
    }

    @Override // io.appmetrica.analytics.IReporter
    public final IPluginReporter getPluginExtension() {
        return this;
    }

    public String j() {
        return "[BaseReporter]";
    }

    public void k() {
        String str;
        Df df;
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        Hf hf = mh.d;
        synchronized (mh) {
            str = mh.f;
        }
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey());
        Set set = I9.a;
        JSONObject jSONObject = new JSONObject();
        if (hf != null && (df = hf.a) != null) {
            try {
                jSONObject.put("preloadInfo", df.c());
            } catch (Throwable unused) {
            }
        }
        String string = jSONObject.toString();
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(string, "", 6144, 0, orCreatePublicLogger);
        c0781a4.c(str);
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void pauseSession() {
        this.c.info("Pause session", new Object[0]);
        c(null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void putAppEnvironmentValue(String str, String str2) {
        String str3;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        PublicLogger publicLogger = this.c;
        if (zIsEmpty) {
            publicLogger.warning("Invalid App Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        publicLogger.info("Put app environment: <%s, %s>", str, str2);
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        C0783a6 c0783a6B = C0781a4.b(str, str2);
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str3 = mh.f;
        }
        ei.a(new Ch(c0783a6B, false, 1, null, new Mh(pf, counterConfiguration, o8, str3)));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportAdRevenue(AdRevenue adRevenue, boolean z) {
        String str;
        Ei ei = this.h;
        F f = new F(adRevenue, z, this.m, this.c);
        Mh mh = this.b;
        ei.getClass();
        C0781a4 c0781a4A = C0781a4.a(LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey()), f);
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        ei.a(new Ch(c0781a4A, false, 1, null, new Mh(pf, counterConfiguration, o8, str)));
        this.c.info("AdRevenue Received: AdRevenue{adRevenue=" + adRevenue.adRevenue + ", currency='" + WrapUtils.wrapToTag(adRevenue.currency.getCurrencyCode()) + "', adType=" + WrapUtils.wrapToTag(adRevenue.adType) + ", adNetwork='" + WrapUtils.wrapToTag(adRevenue.adNetwork) + "', adUnitId='" + WrapUtils.wrapToTag(adRevenue.adUnitId) + "', adUnitName='" + WrapUtils.wrapToTag(adRevenue.adUnitName) + "', adPlacementId='" + WrapUtils.wrapToTag(adRevenue.adPlacementId) + "', adPlacementName='" + WrapUtils.wrapToTag(adRevenue.adPlacementName) + "', precision='" + WrapUtils.wrapToTag(adRevenue.precision) + "', payload=" + AbstractC1305ub.b(adRevenue.payload) + ", autoCollected=" + z + "}", new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAnr(Map<Thread, StackTraceElement[]> map) {
        StackTraceElement[] stackTraceElementArrB;
        C0958h0 c0958h0 = new C0958h0(new C0984i0(this, map));
        Aa aa = new Aa();
        E6 e6 = C1169p4.l().a;
        Thread threadA = c0958h0.a();
        Map mapC = null;
        try {
            stackTraceElementArrB = c0958h0.b();
            if (stackTraceElementArrB == null) {
                try {
                    stackTraceElementArrB = threadA.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArrB = null;
        }
        Kn kn = (Kn) aa.apply(threadA, stackTraceElementArrB);
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new Pn());
        try {
            mapC = c0958h0.c();
        } catch (SecurityException unused3) {
        }
        if (mapC != null) {
            treeMap.putAll(mapC);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread = (Thread) entry.getKey();
            if (thread != threadA && thread != null) {
                arrayList.add((Kn) aa.apply(thread, (StackTraceElement[]) entry.getValue()));
            }
        }
        a(new Y(kn, arrayList, e6.a()));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportECommerce(ECommerceEvent eCommerceEvent) {
        String str;
        this.c.info("E-commerce event received: " + eCommerceEvent.getPublicDescription(), new Object[0]);
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        for (Li li : eCommerceEvent.toProto()) {
            C0781a4 c0781a4 = new C0781a4(LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey()));
            EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
            c0781a4.d = 41000;
            c0781a4.b = c0781a4.e(Base64Utils.compressBase64(MessageNano.toByteArray((MessageNano) li.a)));
            c0781a4.g = li.b.getBytesTruncated();
            Pf pf = new Pf(mh.a);
            CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
            O8 o8 = mh.c;
            synchronized (mh) {
                str = mh.f;
            }
            ei.a(new Ch(c0781a4, false, 1, null, new Mh(pf, counterConfiguration, o8, str)));
        }
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        C0853co c0853coA;
        Ve ve = this.l;
        if (pluginErrorDetails != null) {
            c0853coA = ve.a(pluginErrorDetails);
        } else {
            ve.getClass();
            c0853coA = null;
        }
        H6 h6 = new H6(new Gg(str2, c0853coA), str);
        Ei ei = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.f.fromModel(h6));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, str2, 5896, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.c.info("Error with identifier: %s from plugin received: %s", str, WrapUtils.wrapToTag(str2));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportEvent(ModuleEvent moduleEvent) {
        EnumC1403y9 enumC1403y9;
        if (n.contains(Integer.valueOf(moduleEvent.getType()))) {
            return;
        }
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        String value = moduleEvent.getValue();
        byte[] uTF8Bytes = value == null ? null : StringUtils.getUTF8Bytes(value);
        String name = moduleEvent.getName();
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(uTF8Bytes, name, 8192, publicLogger);
        c0781a4.e = moduleEvent.getType();
        c0781a4.q = 2;
        int i = Q8.a[moduleEvent.getCategory().ordinal()];
        if (i == 1) {
            enumC1403y9 = EnumC1403y9.NATIVE;
        } else {
            if (i != 2) {
                me0.e();
                return;
            }
            enumC1403y9 = EnumC1403y9.SYSTEM;
        }
        c0781a4.l = enumC1403y9;
        c0781a4.c = AbstractC1305ub.b(moduleEvent.getEnvironment());
        if (moduleEvent.getExtras() != null) {
            c0781a4.p = moduleEvent.getExtras();
        }
        this.h.a(c0781a4, this.b, moduleEvent.getServiceDataReporterType(), moduleEvent.getAttributes());
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportRevenue(Revenue revenue) {
        String str;
        Wi wi = V2.a;
        wi.getClass();
        ValidationResult validationResultValidate = wi.validate(revenue);
        if (!validationResultValidate.isValid()) {
            this.c.warning("Passed revenue is not valid. Reason: " + validationResultValidate.getDescription(), new Object[0]);
            return;
        }
        Ei ei = this.h;
        Xi xi = new Xi(revenue, this.c);
        Mh mh = this.b;
        ei.getClass();
        C0781a4 c0781a4A = C0781a4.a(LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey()), xi);
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        ei.a(new Ch(c0781a4A, false, 1, null, new Mh(pf, counterConfiguration, o8, str)));
        this.c.info("Revenue received for productID: " + WrapUtils.wrapToTag(revenue.productID) + " of quantity: " + WrapUtils.wrapToTag(revenue.quantity) + " with price (in micros): " + revenue.priceMicros + " " + revenue.currency, new Object[0]);
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        C0853co c0853coA = this.l.a(pluginErrorDetails);
        Ei ei = this.h;
        Un un = c0853coA.a;
        String str = un != null ? (String) WrapUtils.getOrDefault(un.a, "") : "";
        byte[] byteArray = MessageNano.toByteArray(this.d.fromModel(c0853coA));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, str, 5891, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.c.info("Crash from plugin received: %s", WrapUtils.wrapToTag(pluginErrorDetails.getMessage()));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUserProfile(UserProfile userProfile) {
        String str;
        C1189po c1189po = new C1189po(C1189po.c);
        Iterator<UserProfileUpdate<? extends InterfaceC1215qo>> it = userProfile.getUserProfileUpdates().iterator();
        while (it.hasNext()) {
            InterfaceC1215qo userProfileUpdatePatcher = it.next().getUserProfileUpdatePatcher();
            userProfileUpdatePatcher.a(this.c);
            userProfileUpdatePatcher.a(c1189po);
        }
        uo uoVar = new uo();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c1189po.a.size(); i++) {
            SparseArray sparseArray = c1189po.a;
            Iterator it2 = ((HashMap) sparseArray.get(sparseArray.keyAt(i))).values().iterator();
            while (it2.hasNext()) {
                arrayList.add((C1240ro) it2.next());
            }
        }
        uoVar.a = (C1240ro[]) arrayList.toArray(new C1240ro[arrayList.size()]);
        ValidationResult validationResultValidate = o.validate(uoVar);
        if (!validationResultValidate.isValid()) {
            this.c.warning("UserInfo wasn't sent because " + validationResultValidate.getDescription(), new Object[0]);
            return;
        }
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        C0783a6 c0783a6A = C0781a4.a(uoVar);
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        ei.a(new Ch(c0783a6A, false, 1, null, new Mh(pf, counterConfiguration, o8, str)));
        this.c.info("User profile received", new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void resumeSession() {
        d(null);
        this.c.info("Resume session", new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter, io.appmetrica.analytics.IModuleReporter
    public final void sendEventsBuffer() {
        this.c.info("Send event buffer", new Object[0]);
        Ei ei = this.h;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        C0781a4 c0781a4 = new C0781a4("", "", 256, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setDataSendingEnabled(boolean z) {
        this.b.b.setDataSendingEnabled(z);
        this.c.info("Updated data sending enabled: %s", Boolean.valueOf(z));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void setSessionExtra(String str, byte[] bArr) {
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4("", (String) null, 8193, 0, publicLogger);
        if (bArr == null) {
            bArr = new byte[0];
        }
        c0781a4.p = Collections.singletonMap(str, bArr);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setUserProfileID(String str) {
        String str2;
        Ei ei = this.h;
        Mh mh = this.b;
        ei.getClass();
        C0781a4 c0781a4 = new C0781a4(LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey()));
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0781a4.d = 40962;
        c0781a4.c(str);
        c0781a4.b = c0781a4.e(str);
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str2 = mh.f;
        }
        ei.a(new Ch(c0781a4, false, 1, null, new Mh(pf, counterConfiguration, o8, str2)));
        this.c.info("Set user profile ID: " + WrapUtils.wrapToTag(str), new Object[0]);
    }

    public final void b(Map<String, String> map) {
        if (xo.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
    }

    @Override // io.appmetrica.analytics.impl.Ra
    public final void b(String str) {
        Ei ei = this.h;
        C0783a6 c0783a6A = C0783a6.a(str);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0783a6A, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2) {
        reportError(str, str2, (Throwable) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2, Throwable th) {
        H6 h6 = new H6(new Gg(str2, a(th)), str);
        Ei ei = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.f.fromModel(h6));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, str2, 5896, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.c.info("Error received: id: %s, message: %s", WrapUtils.wrapToTag(str), WrapUtils.wrapToTag(str2));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUnhandledException(Throwable th) {
        C0853co c0853coA = AbstractC0930fo.a(th, new Y(null, null, this.j.a()), null, (String) this.k.b.a(), (Boolean) this.k.c.a());
        Ei ei = this.h;
        ei.a(ei.a(c0853coA, this.b));
        this.c.info("Unhandled exception received: " + c0853coA, new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Ra
    public final boolean b() {
        return this.b.f();
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        C0853co c0853coA;
        Ve ve = this.l;
        if (pluginErrorDetails != null) {
            c0853coA = ve.a(pluginErrorDetails);
        } else {
            ve.getClass();
            c0853coA = null;
        }
        Gg gg = new Gg(str, c0853coA);
        Ei ei = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.e.fromModel(gg));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, str, 5896, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.c.info("Error from plugin received: %s", WrapUtils.wrapToTag(str));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, Throwable th) {
        Gg gg = new Gg(str, a(th));
        Ei ei = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.e.fromModel(gg));
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(byteArray, str, 5892, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        this.c.info("Error received: %s", WrapUtils.wrapToTag(str));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, String str2) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(str2, str, 1, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, Map<String, Object> map) {
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        ei.a(new C0781a4("", str, 1, 0, publicLogger), this.b, 1, map);
        PublicLogger publicLogger2 = this.c;
        StringBuilder sb = new StringBuilder("Event received: ");
        sb.append(WrapUtils.wrapToTag(str));
        sb.append(". With value: ");
        sb.append(WrapUtils.wrapToTag(map == null ? null : map.toString()));
        publicLogger2.info(sb.toString(), new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str), new Object[0]);
        Ei ei = this.h;
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4("", str, 1, 0, publicLogger);
        Mh mh = this.b;
        ei.getClass();
        ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(AppMetricaEvent appMetricaEvent) {
        AppMetricaEventData eventData = appMetricaEvent.getEventData();
        if (n.contains(Integer.valueOf(eventData.getType()))) {
            return;
        }
        this.c.info("AppMetricaEvent received: " + eventData.getDescription(), new Object[0]);
        PublicLogger publicLogger = this.c;
        Set set = I9.a;
        byte[] data = eventData.getData();
        String name = eventData.getName();
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(data, name, 8192, publicLogger);
        c0781a4.e = eventData.getType();
        c0781a4.g = eventData.getBytesTruncated() + c0781a4.g;
        c0781a4.q = 2;
        this.h.a(c0781a4, this.b, 1, (Map) null);
    }

    public final void a(Map<String, String> map) {
        if (xo.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            putAppEnvironmentValue(entry.getKey(), entry.getValue());
        }
    }

    public final C0853co a(Throwable th) {
        Throwable th2;
        StackTraceElement[] stackTrace;
        if (th == null) {
            stackTrace = null;
            th2 = null;
        } else if (th instanceof C0831c2) {
            stackTrace = th.getStackTrace();
            th2 = null;
        } else {
            th2 = th;
            stackTrace = null;
        }
        return AbstractC0930fo.a(th2, new Y(null, null, this.j.a()), stackTrace != null ? Arrays.asList(stackTrace) : null, (String) this.k.b.a(), (Boolean) this.k.c.a());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0814bb, io.appmetrica.analytics.impl.InterfaceC0917fb
    public final void a(C0853co c0853co) {
        pauseSession();
        Ei ei = this.h;
        Ch chA = ei.a(c0853co, this.b);
        Mh mh = chA.e;
        InterfaceC0928fm interfaceC0928fm = ei.e;
        if (interfaceC0928fm != null) {
            mh.b.setUuid(((C0902em) interfaceC0928fm).g());
        } else {
            mh.getClass();
        }
        ei.c.b(chA);
        this.c.info("Unhandled exception received: " + c0853co, new Object[0]);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(String str, String str2) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        PublicLogger publicLogger = this.c;
        if (zIsEmpty) {
            publicLogger.warning("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        publicLogger.info("Put error environment pair <%s, %s>", str, str2);
        Mh mh = this.b;
        synchronized (mh) {
            try {
                O8 o8 = mh.c;
                Kl kl = o8.b;
                Sc sc = o8.a;
                if (sc != null) {
                    String strTrim = kl.a.getKeyTrimmer().trim(str);
                    String strTrim2 = kl.a.getValueTrimmer().trim(str2);
                    if (sc.containsKey(strTrim)) {
                        String str3 = (String) sc.get(strTrim);
                        if (strTrim2 == null || !strTrim2.equals(str3)) {
                            kl.a(sc, strTrim, strTrim2);
                        }
                    } else if (strTrim2 != null) {
                        kl.a(sc, strTrim, strTrim2);
                    }
                } else {
                    kl.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAdRevenue(AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, false);
    }
}
