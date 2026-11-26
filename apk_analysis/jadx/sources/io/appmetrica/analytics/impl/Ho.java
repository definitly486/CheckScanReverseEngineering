package io.appmetrica.analytics.impl;

import defpackage.aa4;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Ho {
    public final Ko a;
    public final Ko b;
    public final Io c;
    public JSONObject d;

    public Ho(Ko ko, Ko ko2, Io io2) {
        this.a = ko;
        this.b = ko2;
        this.c = io2;
    }

    public static JSONObject b(Ko ko) {
        try {
            String strB = ko.b();
            return strB != null ? new JSONObject(strB) : new JSONObject();
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        try {
            if (this.d == null) {
                JSONObject jSONObjectA = this.c.a(b(this.a), b(this.b));
                this.d = jSONObjectA;
                a(jSONObjectA);
            }
            jSONObject = this.d;
            if (jSONObject == null) {
                aa4.j("fileContents");
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final synchronized void a(JSONObject jSONObject) {
        String string = jSONObject.toString();
        try {
            this.a.a(string);
        } catch (Throwable unused) {
        }
        try {
            this.b.a(string);
        } catch (Throwable unused2) {
        }
    }

    public static void a(Ko ko) {
        try {
            ko.flushAsync();
        } catch (Throwable unused) {
        }
    }
}
