package com.tapjoy.internal;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class c1 {
    public final String a;
    public final Long b;

    public c1(JSONObject jSONObject) {
        this.a = null;
        this.b = null;
        this.a = jSONObject.optString("url");
        this.b = Long.valueOf(jSONObject.optLong("ttl"));
    }
}
