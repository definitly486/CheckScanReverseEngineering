package io.appmetrica.analytics.push.impl;

import android.text.TextUtils;
import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class w2 extends gh4 implements ll3 {
    public final /* synthetic */ x2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w2(x2 x2Var) {
        super(0);
        this.a = x2Var;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        LinkedHashMap linkedHashMap;
        x2 x2Var = this.a;
        x2Var.getClass();
        PublicLogger.INSTANCE.info("TokenManager: load tokens from preferences", new Object[0]);
        L1 l1C = r.a(x2Var.a).f.c();
        HashMap map = null;
        String string = l1C.a.getSharedPreferences(l1C.b, 0).getString("io.appmetrica.analytics.push.all_tokens", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                HashMap map2 = new HashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    map2.put(next, new s2(jSONObject2.has("token") ? jSONObject2.getString("token") : null, jSONObject2.getLong("lastUpdateTime")));
                }
                map = map2;
            } catch (JSONException unused) {
            }
        }
        if (map != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (x2Var.b.contains(entry.getKey())) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            linkedHashMap = new LinkedHashMap(linkedHashMap2);
        } else {
            linkedHashMap = new LinkedHashMap();
        }
        PublicLogger.INSTANCE.info("TokenManager: load tokens from preferences result: " + linkedHashMap, new Object[0]);
        return linkedHashMap;
    }
}
