package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0890ea {
    public final String a;
    public final int b;
    public final boolean c;

    public C0890ea(JSONObject jSONObject) {
        this.a = jSONObject.getString("name");
        this.c = jSONObject.getBoolean("required");
        this.b = jSONObject.optInt("version", -1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0890ea.class == obj.getClass()) {
            C0890ea c0890ea = (C0890ea) obj;
            if (this.b != c0890ea.b || this.c != c0890ea.c) {
                return false;
            }
            String str = this.a;
            String str2 = c0890ea.a;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.b) * 31) + (this.c ? 1 : 0);
    }

    public C0890ea(String str, int i, boolean z) {
        this.a = str;
        this.b = i;
        this.c = z;
    }
}
