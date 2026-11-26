package io.appmetrica.analytics.impl;

import defpackage.aa4;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Df implements InterfaceC0940g8 {
    public final String a;
    public final JSONObject b;
    public final boolean c;
    public final boolean d;
    public final EnumC0914f8 e;

    public Df(String str, JSONObject jSONObject, boolean z, boolean z2, EnumC0914f8 enumC0914f8) {
        this.a = str;
        this.b = jSONObject;
        this.c = z;
        this.d = z2;
        this.e = enumC0914f8;
    }

    public static Df a(JSONObject jSONObject) {
        EnumC0914f8 enumC0914f8;
        String strOptStringOrNull = JsonUtils.optStringOrNull(jSONObject, "trackingId");
        JSONObject jSONObjectOptJsonObjectOrDefault = JsonUtils.optJsonObjectOrDefault(jSONObject, "additionalParams", new JSONObject());
        int i = 0;
        boolean zOptBooleanOrDefault = JsonUtils.optBooleanOrDefault(jSONObject, "wasSet", false);
        boolean zOptBooleanOrDefault2 = JsonUtils.optBooleanOrDefault(jSONObject, "autoTracking", false);
        String strOptStringOrNull2 = JsonUtils.optStringOrNull(jSONObject, "source");
        EnumC0914f8.b.getClass();
        EnumC0914f8[] enumC0914f8ArrValues = EnumC0914f8.values();
        int length = enumC0914f8ArrValues.length;
        while (true) {
            if (i >= length) {
                enumC0914f8 = null;
                break;
            }
            enumC0914f8 = enumC0914f8ArrValues[i];
            if (aa4.e(enumC0914f8.a, strOptStringOrNull2)) {
                break;
            }
            i++;
        }
        if (enumC0914f8 == null) {
            enumC0914f8 = EnumC0914f8.c;
        }
        return new Df(strOptStringOrNull, jSONObjectOptJsonObjectOrDefault, zOptBooleanOrDefault, zOptBooleanOrDefault2, enumC0914f8);
    }

    public final JSONObject b() {
        if (!this.c) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackingId", this.a);
            if (this.b.length() > 0) {
                jSONObject.put("additionalParams", this.b);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackingId", this.a);
            jSONObject.put("additionalParams", this.b);
            jSONObject.put("wasSet", this.c);
            jSONObject.put("autoTracking", this.d);
            jSONObject.put("source", this.e.a);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public final String toString() {
        return "PreloadInfoState{trackingId='" + this.a + "', additionalParameters=" + this.b + ", wasSet=" + this.c + ", autoTrackingEnabled=" + this.d + ", source=" + this.e + '}';
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0940g8
    public final EnumC0914f8 a() {
        return this.e;
    }
}
