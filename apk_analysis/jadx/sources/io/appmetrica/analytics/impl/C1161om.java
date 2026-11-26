package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.om, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1161om {
    public final Ma a;
    public final C1019ja b;
    public final Oi c;
    public final Je d;
    public final Xm e;
    public final C1271t3 f;
    public final D2 g;
    public final C1330vb h;
    public final Um i;
    public final Dd j;
    public final Q9 k;

    public C1161om() {
        this(new C1330vb(), new Ma(), new C1019ja(), new Oi(), new Je(), new Xm(), new C1271t3(), new D2(), new Um(), new Dd(), new Q9());
    }

    public final void a(C1290tm c1290tm, C1279tb c1279tb) {
        long jOptLong;
        String string;
        ArrayList arrayListA;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4 = c1279tb.optJSONObject("queries");
        if (jSONObjectOptJSONObject4 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject4.optJSONObject("list")) != null && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("host")) != null) {
            c1290tm.g = jSONObjectOptJSONObject3.optString("url", null);
        }
        Object jSONObject = new JSONObject();
        try {
            jSONObject = c1279tb.get("distribution_customization");
        } catch (Throwable unused) {
        }
        JSONObject jSONObjectOptJSONObject5 = ((JSONObject) jSONObject).optJSONObject("clids");
        if (jSONObjectOptJSONObject5 != null) {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObjectOptJSONObject5.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject(next);
                if (jSONObjectOptJSONObject6 != null && jSONObjectOptJSONObject6.has("value")) {
                    map.put(next, jSONObjectOptJSONObject6.getString("value"));
                }
            }
            c1290tm.j = Vm.a((Map) map);
        }
        JSONObject jSONObjectOptJSONObject7 = c1279tb.optJSONObject(CommonUrlParts.LOCALE);
        String string2 = "";
        c1290tm.m = (jSONObjectOptJSONObject7 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject7.optJSONObject("country")) == null || !jSONObjectOptJSONObject.optBoolean("reliable", false)) ? "" : jSONObjectOptJSONObject.optString("value", "");
        JSONObject jSONObjectOptJSONObject8 = c1279tb.optJSONObject("time");
        if (jSONObjectOptJSONObject8 != null) {
            try {
                c1290tm.l = Long.valueOf(jSONObjectOptJSONObject8.getLong("max_valid_difference_seconds"));
            } catch (Throwable unused2) {
            }
        }
        Lm lm = new Lm();
        JSONObject jSONObjectOptJSONObject9 = c1279tb.optJSONObject("stat_sending");
        if (jSONObjectOptJSONObject9 != null) {
            lm.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject9, "disabled_reporting_interval_seconds", lm.a);
        }
        this.e.getClass();
        c1290tm.p = new Wm(lm.a);
        this.b.getClass();
        Hm hm = new Hm();
        try {
            Object jSONObject2 = new JSONObject();
            try {
                jSONObject2 = c1279tb.get("features");
            } catch (Throwable unused3) {
            }
            JSONObject jSONObjectOptJSONObject10 = ((JSONObject) jSONObject2).optJSONObject("list");
            if (jSONObjectOptJSONObject10 != null) {
                C1373x4 c1373x4 = new C1373x4();
                c1373x4.a = C1019ja.a(jSONObjectOptJSONObject10, "permissions_collecting", hm.a);
                c1373x4.b = C1019ja.a(jSONObjectOptJSONObject10, "features_collecting", hm.b);
                c1373x4.c = C1019ja.a(jSONObjectOptJSONObject10, "google_aid", hm.c);
                c1373x4.d = C1019ja.a(jSONObjectOptJSONObject10, "sim_info", hm.d);
                c1373x4.e = C1019ja.a(jSONObjectOptJSONObject10, "huawei_oaid", hm.e);
                c1373x4.f = jSONObjectOptJSONObject10.has("ssl_pinning") ? Boolean.valueOf(jSONObjectOptJSONObject10.getJSONObject("ssl_pinning").getBoolean(TJAdUnitConstants.String.ENABLED)) : null;
                c1290tm.b = new C1423z4(c1373x4);
            }
        } catch (Throwable unused4) {
        }
        this.a.getClass();
        try {
            Object jSONObject3 = new JSONObject();
            try {
                jSONObject3 = c1279tb.get("query_hosts");
            } catch (Throwable unused5) {
            }
            JSONObject jSONObjectOptJSONObject11 = ((JSONObject) jSONObject3).optJSONObject("list");
            if (jSONObjectOptJSONObject11 != null) {
                try {
                    string = jSONObjectOptJSONObject11.getJSONObject("get_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused6) {
                    string = "";
                }
                if (!TextUtils.isEmpty(string)) {
                    c1290tm.d = string;
                }
                ArrayList arrayListA2 = Ma.a(jSONObjectOptJSONObject11, "report");
                if (!xo.a((Collection) arrayListA2)) {
                    c1290tm.e = arrayListA2;
                }
                try {
                    string2 = jSONObjectOptJSONObject11.getJSONObject("report_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused7) {
                }
                if (!TextUtils.isEmpty(string2)) {
                    c1290tm.f = string2;
                }
                ArrayList arrayListA3 = Ma.a(jSONObjectOptJSONObject11, "startup");
                if (!xo.a((Collection) arrayListA3)) {
                    c1290tm.c = arrayListA3;
                }
                ArrayList arrayListA4 = Ma.a(jSONObjectOptJSONObject11, "diagnostic");
                if (!xo.a((Collection) arrayListA4)) {
                    c1290tm.n = arrayListA4;
                }
                HashMap map2 = new HashMap();
                Iterator<String> itKeys2 = jSONObjectOptJSONObject11.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    if (!Ma.a.contains(next2) && (arrayListA = Ma.a(jSONObjectOptJSONObject11, next2)) != null) {
                        map2.put(next2, arrayListA);
                    }
                }
                c1290tm.o = map2;
            }
        } catch (Throwable unused8) {
        }
        this.c.getClass();
        Mm mm = new Mm();
        JSONObject jSONObjectOptJSONObject12 = c1279tb.optJSONObject("retry_policy");
        int iOptInt = mm.w;
        int iOptInt2 = mm.x;
        if (jSONObjectOptJSONObject12 != null) {
            iOptInt = jSONObjectOptJSONObject12.optInt("max_interval_seconds", iOptInt);
            iOptInt2 = jSONObjectOptJSONObject12.optInt("exponential_multiplier", mm.x);
        }
        c1290tm.q = new RetryPolicyConfig(iOptInt, iOptInt2);
        this.d.getClass();
        if (c1290tm.b.a) {
            JSONObject jSONObjectOptJSONObject13 = c1279tb.optJSONObject("permissions_collecting");
            Jm jm = new Jm();
            long jOptLong2 = jm.a;
            if (jSONObjectOptJSONObject13 != null) {
                jOptLong2 = jSONObjectOptJSONObject13.optLong("check_interval_seconds", jOptLong2);
                jOptLong = jSONObjectOptJSONObject13.optLong("force_send_interval_seconds", jm.b);
            } else {
                jOptLong = jm.b;
            }
            c1290tm.k = new He(jOptLong2, jOptLong);
        }
        C1271t3 c1271t3 = this.f;
        c1271t3.getClass();
        Em em = new Em();
        JSONObject jSONObjectOptJSONObject14 = c1279tb.optJSONObject("cache_control");
        if (jSONObjectOptJSONObject14 != null) {
            em.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject14, "last_known_location_ttl", em.a);
        }
        c1271t3.a.getClass();
        c1290tm.r = new C1194q3(em.a);
        this.g.getClass();
        D2.a(c1290tm, c1279tb);
        Um um = this.i;
        um.getClass();
        JSONObject jSONObjectOptJSONObject15 = c1279tb.optJSONObject("startup_update");
        Km km = new Km();
        Integer numA = AbstractC1305ub.a(jSONObjectOptJSONObject15, "interval_seconds", null);
        if (numA != null) {
            km.a = numA.intValue();
        }
        um.a.getClass();
        c1290tm.t = new Sm(km.a);
        Map<String, C1048kd> mapB = this.j.a.b();
        Cd cd = new Cd(c1279tb);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, C1048kd> entry : mapB.entrySet()) {
            Object objInvoke = cd.invoke(entry);
            if (objInvoke != null) {
                linkedHashMap.put(entry.getKey(), objInvoke);
            }
        }
        c1290tm.u = linkedHashMap;
        P9 p9 = this.k.a;
        Gm gm = new Gm();
        JSONObject jSONObjectOptJSONObject16 = c1279tb.optJSONObject("external_attribution");
        if (jSONObjectOptJSONObject16 != null) {
            gm.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject16, "collecting_interval_seconds", gm.a);
        }
        p9.getClass();
        c1290tm.v = new O9(gm.a);
    }

    public C1161om(C1330vb c1330vb, Ma ma, C1019ja c1019ja, Oi oi, Je je, Xm xm, C1271t3 c1271t3, D2 d2, Um um, Dd dd, Q9 q9) {
        this.a = ma;
        this.b = c1019ja;
        this.c = oi;
        this.d = je;
        this.e = xm;
        this.f = c1271t3;
        this.g = d2;
        this.h = c1330vb;
        this.i = um;
        this.j = dd;
        this.k = q9;
    }
}
