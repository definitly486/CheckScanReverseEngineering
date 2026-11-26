package io.appmetrica.analytics.impl;

import android.util.Base64;
import defpackage.aa4;
import defpackage.ha1;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Fo {
    public final Ho a;

    public Fo(C1102mf c1102mf, C1201qa c1201qa) {
        this.a = new Ho(c1102mf, c1201qa, new defpackage.og());
    }

    public static final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("device_id", JsonUtils.optStringOrNullable(jSONObject2, "device_id", JsonUtils.optStringOrNull(jSONObject, "device_id")));
        jSONObject3.put("device_id_hash", JsonUtils.optStringOrNullable(jSONObject2, "device_id_hash", JsonUtils.optStringOrNull(jSONObject, "device_id_hash")));
        jSONObject3.put("referrer", JsonUtils.optStringOrNullable(jSONObject2, "referrer", JsonUtils.optStringOrNull(jSONObject, "referrer")));
        jSONObject3.put("referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject2, "referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject, "referrer_checked", Boolean.FALSE)));
        jSONObject3.put("last_migration_api_level", AbstractC1305ub.a(jSONObject2, "last_migration_api_level", AbstractC1305ub.a(jSONObject, "last_migration_api_level", -1)));
        return jSONObject3;
    }

    public final synchronized void b(String str) {
        JSONObject jSONObjectA = this.a.a();
        if (!aa4.e(JsonUtils.optStringOrNull(jSONObjectA, "device_id_hash"), str)) {
            this.a.a(jSONObjectA.put("device_id_hash", str));
        }
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0026  */
    public final synchronized C1155og b() {
        C1155og c1155og;
        String strOptStringOrNull = JsonUtils.optStringOrNull(this.a.a(), "referrer");
        if (strOptStringOrNull != null) {
            try {
                byte[] bArrDecode = Base64.decode(strOptStringOrNull.getBytes(ha1.b), 0);
                if (bArrDecode == null || bArrDecode.length == 0) {
                    c1155og = null;
                } else {
                    c1155og = new C1155og(bArrDecode);
                }
            } catch (Throwable unused) {
            }
        } else {
            c1155og = null;
        }
        return c1155og;
    }

    public final synchronized void a(C1155og c1155og) {
        String str;
        if (c1155og != null) {
            try {
                str = new String(Base64.encode(c1155og.a(), 0), ha1.b);
            } catch (Throwable th) {
                throw th;
            }
        } else {
            str = null;
        }
        JSONObject jSONObjectA = this.a.a();
        if (!aa4.e(JsonUtils.optStringOrNull(jSONObjectA, "referrer"), str)) {
            this.a.a(jSONObjectA.put("referrer", str));
        }
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    public final synchronized void a(String str) {
        JSONObject jSONObjectA = this.a.a();
        if (!aa4.e(JsonUtils.optStringOrNull(jSONObjectA, "device_id"), str)) {
            this.a.a(jSONObjectA.put("device_id", str));
        }
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    public final synchronized String a() {
        return JsonUtils.optStringOrNull(this.a.a(), "device_id_hash");
    }
}
