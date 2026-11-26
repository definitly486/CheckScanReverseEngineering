package io.appmetrica.analytics.push.impl;

import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class q2 {
    public final C1508s1 a;

    public q2(C1508s1 c1508s1) {
        this.a = c1508s1;
    }

    public final JSONObject a() throws JSONException {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        C1508s1 c1508s1 = this.a;
        if (c1508s1 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TJAdUnitConstants.String.ENABLED, c1508s1.a);
            jSONObject2.put("system_notify_time", c1508s1.e);
            jSONObject2.put("changed", c1508s1.b ? Boolean.TRUE : null);
            if (!c1508s1.c.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                for (C1517v1 c1517v1 : c1508s1.c) {
                    String str = c1517v1.a;
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(TJAdUnitConstants.String.ENABLED, c1517v1.b);
                    jSONObject4.put("changed", c1517v1.c ? Boolean.TRUE : null);
                    JSONObject jSONObject5 = new JSONObject();
                    for (C1511t1 c1511t1 : c1517v1.d) {
                        String str2 = c1511t1.a;
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put(TJAdUnitConstants.String.ENABLED, c1511t1.b);
                        jSONObject6.put("changed", c1511t1.c ? Boolean.TRUE : null);
                        jSONObject5.put(str2, jSONObject6);
                    }
                    j59 j59Var = j59.a;
                    jSONObject4.put("channels", jSONObject5);
                    jSONObject3.put(str, jSONObject4);
                }
                j59 j59Var2 = j59.a;
                jSONObject2.put("groups", jSONObject3);
            }
            if (!c1508s1.d.isEmpty()) {
                JSONObject jSONObject7 = new JSONObject();
                for (C1511t1 c1511t2 : c1508s1.d) {
                    String str3 = c1511t2.a;
                    JSONObject jSONObject8 = new JSONObject();
                    jSONObject8.put(TJAdUnitConstants.String.ENABLED, c1511t2.b);
                    jSONObject8.put("changed", c1511t2.c ? Boolean.TRUE : null);
                    jSONObject7.put(str3, jSONObject8);
                }
                j59 j59Var3 = j59.a;
                jSONObject2.put("channels", jSONObject7);
            }
            obj = jSONObject2;
        } else {
            obj = null;
        }
        jSONObject.put("notifications_status", obj);
        return jSONObject;
    }
}
