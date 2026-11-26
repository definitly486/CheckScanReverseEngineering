package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1024jf extends Kd implements Ko {
    public static final long d = 0;
    public static final int e = -1;
    public static final String f = "";
    public static final String g = "";
    public static final String r = "SESSION_";
    public static final C1076lf h = new C1076lf("PERMISSIONS_CHECK_TIME", null);
    public static final C1076lf i = new C1076lf("PROFILE_ID", null);
    public static final C1076lf j = new C1076lf("APP_ENVIRONMENT", null);
    public static final C1076lf k = new C1076lf("APP_ENVIRONMENT_REVISION", null);
    public static final C1076lf l = new C1076lf("LAST_APP_VERSION_WITH_FEATURES", null);
    public static final C1076lf m = new C1076lf("APPLICATION_FEATURES", null);
    public static final C1076lf n = new C1076lf("CERTIFICATES_SHA1_FINGERPRINTS", null);
    public static final C1076lf o = new C1076lf("VITAL_DATA", null);
    public static final C1076lf p = new C1076lf("SENT_EXTERNAL_ATTRIBUTIONS", null);
    public static final C1076lf q = new C1076lf("AUTO_COLLECTED_DATA_SUBSCRIBERS", null);
    public static final C1076lf s = new C1076lf("MAIN_REPORTER_EVENTS_TRIGGER_CONDITION_MET", null);

    public C1024jf(Va va) {
        super(va);
    }

    public final void a(Map<String, Long> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Long> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (Throwable unused) {
            }
        }
        d(q.b, jSONObject.toString());
    }

    public final void b(Map<Integer, String> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey().toString(), entry.getValue());
            } catch (Throwable unused) {
            }
        }
        d(p.b, jSONObject.toString());
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Set<String> c() {
        return this.a.b();
    }

    public final C1061l0 d() {
        C1061l0 c1061l0;
        synchronized (this) {
            c1061l0 = new C1061l0(this.a.getString(j.b, "{}"), this.a.getLong(k.b, 0L));
        }
        return c1061l0;
    }

    public final C1024jf e(String str, String str2) {
        return (C1024jf) d(new C1076lf(r, str).b, str2);
    }

    public final Map<String, Long> f() {
        HashMap map = new HashMap();
        try {
            String string = this.a.getString(q.b, null);
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, Long.valueOf(jSONObject.getLong(next)));
                }
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf, io.appmetrica.analytics.impl.Nl, io.appmetrica.analytics.impl.Ko
    public final void flushAsync() {
        this.a.flushAsync();
    }

    public final List<String> g() {
        String str = n.b;
        List list = Collections.EMPTY_LIST;
        String[] strArr = list == null ? null : (String[]) list.toArray(new String[list.size()]);
        String string = this.a.getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                strArr = new String[jSONArray.length()];
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    strArr[i2] = jSONArray.optString(i2);
                }
            } catch (Throwable unused) {
            }
        }
        if (strArr == null) {
            return null;
        }
        return Arrays.asList(strArr);
    }

    public final String h(String str) {
        return this.a.getString(new C1076lf(r, str).b, "");
    }

    public final long i() {
        return this.a.getLong(h.b, 0L);
    }

    public final String j() {
        return this.a.getString(i.b, null);
    }

    public final Map<Integer, String> k() {
        HashMap map = new HashMap();
        try {
            String string = this.a.getString(p.b, null);
            if (string != null) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(Integer.valueOf(Integer.parseInt(next)), jSONObject.getString(next));
                }
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    public final C1024jf j(String str) {
        return (C1024jf) d(i.b, str);
    }

    public final C1024jf i(String str) {
        return (C1024jf) d(m.b, str);
    }

    public final String e() {
        return this.a.getString(m.b, "");
    }

    public final int h() {
        return this.a.getInt(l.b, -1);
    }

    public final C1024jf a(long j2) {
        return (C1024jf) d(h.b, j2);
    }

    public final C1024jf a(int i2) {
        return (C1024jf) d(l.b, i2);
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final String b() {
        return this.a.getString(o.b, null);
    }

    public final C1024jf a(List<String> list) {
        return (C1024jf) a(n.b, list);
    }

    public final void b(boolean z) {
        d(s.b, z);
    }

    public final boolean a(boolean z) {
        return this.a.getBoolean(s.b, z);
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final void a(String str) {
        d(o.b, str);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf, io.appmetrica.analytics.impl.Ko
    public final void a() {
        super.a();
    }

    public final C1024jf a(C1061l0 c1061l0) {
        synchronized (this) {
            d(j.b, c1061l0.a);
            d(k.b, c1061l0.b);
        }
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Kd
    public final String g(String str) {
        return new C1076lf(str, null).b;
    }
}
