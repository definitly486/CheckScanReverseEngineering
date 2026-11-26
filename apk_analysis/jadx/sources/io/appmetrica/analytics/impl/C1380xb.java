package io.appmetrica.analytics.impl;

import android.util.Base64;
import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1380xb {
    public final byte[] a;
    public final String b;
    public final int c;
    public final HashMap d;
    public final String e;
    public final Integer f;
    public final String g;
    public final String h;
    public final CounterConfigurationReporterType i;
    public final String j;
    public final long k;

    public C1380xb(String str, long j) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject(NotificationCompat.CATEGORY_EVENT);
        this.a = Base64.decode(jSONObject2.getString("jvm_crash"), 0);
        this.b = jSONObject2.getString("name");
        this.c = jSONObject2.getInt("bytes_truncated");
        this.j = JsonUtils.optStringOrNull(jSONObject2, "environment");
        String strOptString = jSONObject2.optString("trimmed_fields");
        this.d = new HashMap();
        if (strOptString != null) {
            try {
                HashMap mapC = AbstractC1305ub.c(strOptString);
                if (mapC != null) {
                    for (Map.Entry entry : mapC.entrySet()) {
                        this.d.put(Z3.valueOf((String) entry.getKey()), Integer.valueOf(Integer.parseInt((String) entry.getValue())));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("process_configuration");
        this.e = jSONObject3.getString("package_name");
        this.f = Integer.valueOf(jSONObject3.getInt("pid"));
        this.g = jSONObject3.getString("psid");
        JSONObject jSONObject4 = jSONObject.getJSONObject("reporter_configuration");
        this.h = jSONObject4.getString("api_key");
        this.i = a(jSONObject4);
        this.k = j;
    }

    public static CounterConfigurationReporterType a(JSONObject jSONObject) {
        return jSONObject.has("reporter_type") ? CounterConfigurationReporterType.fromStringValue(jSONObject.getString("reporter_type")) : CounterConfigurationReporterType.MAIN;
    }

    public final int b() {
        return this.c;
    }

    public final byte[] c() {
        return this.a;
    }

    public final String d() {
        return this.j;
    }

    public final long e() {
        return this.k;
    }

    public final String f() {
        return this.b;
    }

    public final String g() {
        return this.e;
    }

    public final Integer h() {
        return this.f;
    }

    public final String i() {
        return this.g;
    }

    public final CounterConfigurationReporterType j() {
        return this.i;
    }

    public final HashMap<Z3, Integer> k() {
        return this.d;
    }

    public final String l() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.d.entrySet()) {
            map.put(((Z3) entry.getKey()).name(), (Integer) entry.getValue());
        }
        return new JSONObject().put("process_configuration", new JSONObject().put("pid", this.f).put("psid", this.g).put("package_name", this.e)).put("reporter_configuration", new JSONObject().put("api_key", this.h).put("reporter_type", this.i.getStringValue())).put(NotificationCompat.CATEGORY_EVENT, new JSONObject().put("jvm_crash", Base64.encodeToString(this.a, 0)).put("name", this.b).put("bytes_truncated", this.c).put("trimmed_fields", AbstractC1305ub.b(map)).putOpt("environment", this.j)).toString();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JvmCrash{name='");
        sb.append(this.b);
        sb.append("', packageName='");
        sb.append(this.e);
        sb.append("', pid=");
        sb.append(this.f);
        sb.append(", psid='");
        sb.append(this.g);
        sb.append("', apiKey='");
        sb.append(this.h);
        sb.append("', errorEnvironment='");
        sb.append(this.j);
        sb.append("', reporterType=");
        sb.append(this.i);
        sb.append(", fileModifiedTimestamp=");
        return defpackage.lg.f(sb, this.k, '}');
    }

    public final String a() {
        return this.h;
    }

    public C1380xb(C0783a6 c0783a6, V3 v3, HashMap<Z3, Integer> map) {
        this.a = c0783a6.getValueBytes();
        this.b = c0783a6.getName();
        this.c = c0783a6.getBytesTruncated();
        if (map != null) {
            this.d = map;
        } else {
            this.d = new HashMap();
        }
        Pf pfA = v3.a();
        this.e = pfA.e();
        this.f = pfA.f();
        this.g = pfA.g();
        CounterConfiguration counterConfigurationB = v3.b();
        this.h = counterConfigurationB.getApiKey();
        this.i = counterConfigurationB.getReporterType();
        this.j = c0783a6.f();
        this.k = 0L;
    }
}
