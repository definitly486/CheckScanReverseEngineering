package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1180pf {
    public final String a;
    public final JSONObject b;
    public final EnumC0914f8 c;

    public C1180pf(String str, JSONObject jSONObject, EnumC0914f8 enumC0914f8) {
        this.a = str;
        this.b = jSONObject;
        this.c = enumC0914f8;
    }

    public final String toString() {
        return "Candidate{trackingId='" + this.a + "', additionalParams=" + this.b + ", source=" + this.c + '}';
    }
}
