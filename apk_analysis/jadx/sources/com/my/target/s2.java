package com.my.target;

import android.text.TextUtils;
import com.my.tracker.ads.AdFormat;
import defpackage.r8a;
import defpackage.y14;
import defpackage.yda;
import defpackage.z8a;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s2 {
    public static void a(List list, JSONObject jSONObject, yda ydaVar) {
        if (list == null) {
            return;
        }
        yda ydaVarA = ydaVar.a("hosts");
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("hosts");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i, null);
                    if (TextUtils.isEmpty(strOptString)) {
                        y14.r(null, "AdResponseParser: Invalid host-string at position " + i);
                    } else {
                        list.add(strOptString);
                    }
                }
            }
        } catch (Throwable th) {
            y14.r(null, "AdResponseParser Error: Exception while handling hosts");
            ydaVarA.a.a(ydaVarA.b("Handle hosts: exception=" + y14.p(th)), 0, 1, 3001, null);
        }
    }

    public static boolean b(JSONObject jSONObject, yda ydaVar) {
        try {
            String string = jSONObject.getString("version");
            y14.r(null, "AdResponseParser: JSON version " + string);
            int iIndexOf = string.indexOf(".");
            if (iIndexOf > 0 && Integer.parseInt(string.substring(0, iIndexOf), 10) == 2) {
                return true;
            }
            ydaVar.a.a(ydaVar.b("Unsupported version=".concat(string)), 0, 0, 3003, null);
            return false;
        } catch (Throwable th) {
            y14.r(null, "AdResponseParser Error: Check version failed - " + th.getMessage());
            ydaVar.a.a(ydaVar.b("Check version exception: ".concat("message=" + th.getMessage() + "\nexception=" + y14.p(th))), 0, 0, 3001, null);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    public static void c(JSONObject jSONObject, yda ydaVar) {
        JSONObject jSONObjectOptJSONObject;
        boolean z;
        try {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("featureFlags");
            if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("sendStatisticV2")) != null) {
                long jOptLong = jSONObjectOptJSONObject.optLong("ttl", 7200L) * 1000;
                if (z2.g.compareAndSet(false, true)) {
                    z2.h = Math.max(300000L, Math.min(jOptLong, 432000000L));
                }
            }
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    if (jSONObjectOptJSONObject2.has("sendMonitoring")) {
                        z = jSONObjectOptJSONObject2.getBoolean("sendMonitoring");
                    } else {
                        z = false;
                    }
                } catch (Throwable unused) {
                }
            } else {
                z = false;
            }
            z8a z8aVar = ydaVar.a;
            if (z8aVar.h == 0) {
                z8aVar.f.c(z8aVar, z, new r8a(0, z8aVar, z));
            }
            if (jSONObjectOptJSONObject2 == null) {
                return;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(AdFormat.INTERSTITIAL);
            if (jSONObjectOptJSONObject3 != null) {
                try {
                    jSONObjectOptJSONObject3.optBoolean("isHitMapEnabled");
                } catch (Throwable unused2) {
                }
            }
            ydaVar.a.getClass();
        } catch (Throwable th) {
            y14.r(null, "AdResponseParser: Parsing ad response error: " + th.getMessage());
            ydaVar.a.a(ydaVar.b("Feature-flag json parse, exception=" + y14.p(th) + ", data=" + jSONObject), 0, 0, 3001, null);
        }
    }
}
