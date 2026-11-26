package com.my.tracker.obfuscated;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class s0 {
    private final JSONObject a;
    private final String b;
    private final String c;
    private final boolean d;
    private final long e;
    private JSONObject f;
    private Long g;

    public s0(JSONObject jSONObject, String str, String str2, boolean z, long j) {
        this.b = str;
        this.a = jSONObject;
        this.c = str2;
        this.d = z;
        this.e = j;
    }

    public static s0 a(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
                return a(jSONObject, str2, j);
            }
            b3.a("RawPurchase: empty productId in data " + str);
            return null;
        } catch (Throwable th) {
            b3.b("RawPurchase error: creating object failed", th);
            return null;
        }
    }

    public Long b() {
        return this.g;
    }

    public String c() {
        return this.c;
    }

    public JSONObject d() {
        return this.a;
    }

    public JSONObject e() {
        return this.f;
    }

    public long f() {
        return this.e;
    }

    public boolean g() {
        return this.d;
    }

    public static s0 a(JSONObject jSONObject, String str, long j) {
        return new s0(jSONObject, str, jSONObject.optString("productId"), jSONObject.has("autoRenewing"), j);
    }

    public String a() {
        return this.b;
    }

    public s0 a(Long l) {
        this.g = l;
        return this;
    }

    public s0 a(JSONObject jSONObject) {
        this.f = jSONObject;
        return this;
    }
}
