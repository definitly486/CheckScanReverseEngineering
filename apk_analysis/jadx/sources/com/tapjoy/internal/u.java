package com.tapjoy.internal;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u {
    public static final void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        jSONObject.getClass();
        str.getClass();
        if (!(obj instanceof String) || ((CharSequence) obj).length() > 0) {
            jSONObject.putOpt(str, obj);
        }
    }
}
