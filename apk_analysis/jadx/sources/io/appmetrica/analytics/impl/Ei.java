package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public final class Ei {
    public final Q4 a;
    public final C0904eo b;
    public final Gi c;
    public final C1242s0 d;
    public InterfaceC0928fm e;
    public final C1159ok f;

    public Ei(C1242s0 c1242s0, C0904eo c0904eo, Q4 q4, C1159ok c1159ok) {
        this(c1242s0, c0904eo, q4, c1159ok, new Gi(c1242s0, c1159ok));
    }

    public final Ch a(C0853co c0853co, Mh mh) {
        String str;
        this.d.c();
        C0904eo c0904eo = this.b;
        c0904eo.getClass();
        Un un = c0853co.a;
        String str2 = un == null ? "" : (String) WrapUtils.getOrDefault(un.a, "");
        byte[] bArrFromModel = c0904eo.a.fromModel(c0853co);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(mh.b.getApiKey());
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4(bArrFromModel, str2, 5891, orCreatePublicLogger);
        c0781a4.c = mh.d();
        HashMap map = c0781a4.r;
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        return new Ch(c0781a4, true, 1, map, new Mh(pf, counterConfiguration, o8, str));
    }

    public final void b(String str) {
        Pf pf = this.a.a;
        synchronized (pf) {
            pf.a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", str);
        }
    }

    public Ei(C1242s0 c1242s0, C0904eo c0904eo, Q4 q4, C1159ok c1159ok, Gi gi) {
        this.d = c1242s0;
        this.a = q4;
        this.b = c0904eo;
        this.f = c1159ok;
        this.c = gi;
    }

    public final void a(C0902em c0902em) {
        this.e = c0902em;
        this.a.b.setUuid(c0902em.g());
    }

    public final void a(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4) {
        if (xo.a(bool)) {
            this.a.b.setLocationTracking(bool.booleanValue());
        }
        if (xo.a(bool2)) {
            this.a.b.setDataSendingEnabled(bool2.booleanValue());
        }
        if (xo.a(bool3)) {
            this.a.b.setAdvIdentifiersTracking(bool3.booleanValue(), bool4.booleanValue());
        }
        C0783a6 c0783a6A = C0783a6.a();
        Q4 q4 = this.a;
        a(a(c0783a6A, q4), q4, 1, (Map) null);
    }

    public final void a(C0783a6 c0783a6, Mh mh, int i, Map map) {
        String str;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        this.d.c();
        if (!xo.a(map)) {
            String strB = AbstractC1305ub.b(map);
            if (c0783a6.d == 8192) {
                c0783a6.setValueBytes(StringUtils.getUTF8Bytes(strB));
            } else {
                c0783a6.setValue(strB);
            }
            a(c0783a6, mh);
        }
        Pf pf = new Pf(mh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(mh.b);
        O8 o8 = mh.c;
        synchronized (mh) {
            str = mh.f;
        }
        a(new Ch(c0783a6, false, i, null, new Mh(pf, counterConfiguration, o8, str)));
    }

    public static C0783a6 a(C0783a6 c0783a6, Mh mh) {
        if (I9.a.contains(Integer.valueOf(c0783a6.d))) {
            c0783a6.c = mh.d();
        }
        return c0783a6;
    }

    public final void a(List list) {
        Pf pf = this.a.a;
        synchronized (pf) {
            pf.a.put("PROCESS_CFG_CUSTOM_HOSTS", xo.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
        }
    }

    public final void a(HashMap map) {
        Pf pf = this.a.a;
        synchronized (pf) {
            pf.a.put("PROCESS_CFG_CLIDS", AbstractC1305ub.b(map));
        }
    }

    public final void a(String str) {
        Pf pf = this.a.a;
        synchronized (pf) {
            pf.a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
        }
    }

    public final void a(Ch ch) {
        Mh mh = ch.e;
        InterfaceC0928fm interfaceC0928fm = this.e;
        if (interfaceC0928fm != null) {
            mh.b.setUuid(((C0902em) interfaceC0928fm).g());
        } else {
            mh.getClass();
        }
        this.c.a(ch);
    }
}
