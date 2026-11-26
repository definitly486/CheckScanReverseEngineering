package io.appmetrica.analytics.push.impl;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1501q extends AbstractC1509t {
    public final String c;
    public final C1475i d;

    public C1501q(String str, String str2, C1475i c1475i) {
        super(2, str2);
        this.c = str;
        this.d = c1475i;
    }

    public final String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("notification_id", this.c);
            jSONObject.put("action", this.d.a());
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
