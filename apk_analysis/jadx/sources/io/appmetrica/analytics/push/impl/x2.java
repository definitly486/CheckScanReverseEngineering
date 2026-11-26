package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.j59;
import defpackage.m05;
import io.appmetrica.analytics.push.TokenUpdateListener;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class x2 {
    public final Context a;
    public final Set b;
    public final cl4 c = new fh8(new w2(this));

    public x2(Context context, Set set) {
        this.a = context;
        this.b = set;
    }

    public final synchronized void a(String str, String str2, long j) {
        String string;
        try {
            if (this.b.contains(str2)) {
                ((Map) this.c.getValue()).put(str2, new s2(str, j));
                L1 l1D = r.a(this.a).d();
                Map map = (Map) this.c.getValue();
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        String str3 = (String) entry.getKey();
                        s2 s2Var = (s2) entry.getValue();
                        s2Var.getClass();
                        jSONObject.put(str3, new JSONObject().put("token", s2Var.a).put("lastUpdateTime", s2Var.b));
                    }
                    string = jSONObject.toString();
                } catch (JSONException unused) {
                    string = null;
                }
                l1D.a("io.appmetrica.analytics.push.all_tokens", string);
                c();
            } else {
                PublicLogger.INSTANCE.info("TokenManager: token for provider " + str2 + " is not supported", new Object[0]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Map b() {
        return (Map) this.c.getValue();
    }

    public final void c() {
        j59 j59Var;
        TokenUpdateListener tokenUpdateListener = r.a(this.a).h;
        if (tokenUpdateListener != null) {
            Map map = (Map) this.c.getValue();
            LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((s2) entry.getValue()).a);
            }
            tokenUpdateListener.onTokenUpdated(linkedHashMap);
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            PublicLogger.INSTANCE.info("TokenManager: token update listener is null", new Object[0]);
        }
    }

    public final synchronized LinkedHashMap a() {
        LinkedHashMap linkedHashMap;
        Map mapB = b();
        linkedHashMap = new LinkedHashMap(m05.b(mapB.size()));
        for (Map.Entry entry : mapB.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((s2) entry.getValue()).a);
        }
        return linkedHashMap;
    }
}
