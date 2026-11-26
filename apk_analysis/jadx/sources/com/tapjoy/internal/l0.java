package com.tapjoy.internal;

import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 {
    public final String a;
    public final HashMap b = new HashMap();
    public final String c;
    public final String d;
    public final r2 e;
    public boolean f;

    public l0(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        this.a = str;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.b.put(next, jSONObject.optString(next));
        }
        this.c = jSONObject2.optString("show");
        this.d = jSONObject2.optString("error");
        this.e = new r2();
    }
}
