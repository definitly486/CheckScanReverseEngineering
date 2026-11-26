package com.tapjoy.internal;

import androidx.compose.material3.internal.CalendarModelKt;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import defpackage.ar4;
import defpackage.jg;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r0 {
    public static volatile List a = kx2.b;

    public static List a(JSONObject jSONObject) {
        kx2 kx2Var = kx2.b;
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_usage");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("token", "");
                    long jOptLong = jSONObjectOptJSONObject.optLong("last_fetch", 0L);
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("categories");
                    if (jSONObjectOptJSONObject2 != null) {
                        ar4 ar4VarE = u96.e();
                        strOptString.getClass();
                        p0 p0VarD = d(jSONObjectOptJSONObject2, strOptString, jOptLong);
                        if (p0VarD != null) {
                            ar4VarE.add(p0VarD);
                        }
                        p0 p0VarC = c(jSONObjectOptJSONObject2, strOptString, jOptLong);
                        if (p0VarC != null) {
                            ar4VarE.add(p0VarC);
                        }
                        p0 p0VarA = a(jSONObjectOptJSONObject2, strOptString, jOptLong);
                        if (p0VarA != null) {
                            ar4VarE.add(p0VarA);
                        }
                        p0 p0VarB = b(jSONObjectOptJSONObject2, strOptString, jOptLong);
                        if (p0VarB != null) {
                            ar4VarE.add(p0VarB);
                        }
                        ar4 ar4VarD = u96.d(ar4VarE);
                        ar4VarD.getClass();
                        a = ar4VarD;
                        return ar4VarD;
                    }
                }
            } catch (Exception e) {
                jg.f("Failed to parse StatsConfig from connect: ", e.getMessage());
                return kx2Var;
            }
        }
        return kx2Var;
    }

    public static q0 b(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new q0(null, null, null);
        }
        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        return new q0(Long.valueOf(jCurrentTimeMillis - (((long) (jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optInt("max_lookback", 1) : 1)) * CalendarModelKt.MillisecondsIn24Hours)), Long.valueOf(jCurrentTimeMillis), jSONObjectOptJSONObject != null ? Integer.valueOf(jSONObjectOptJSONObject.optInt("period_in_seconds")) : null);
    }

    public static p0 c(JSONObject jSONObject, String str, long j) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("usage_events");
        if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.optBoolean(RemoteConfigComponent.FETCH_FILE_NAME, false)) {
            return null;
        }
        List listA = a(jSONObjectOptJSONObject.optJSONArray("exclude_bundles"));
        q0 q0VarB = b(jSONObjectOptJSONObject.optJSONArray("window"));
        return new p0(str, n0.b, q0VarB.a, q0VarB.b, q0VarB.c, t.a, listA, Long.valueOf(j));
    }

    public static p0 d(JSONObject jSONObject, String str, long j) {
        t tVar;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("usage_stats");
        if (jSONObjectOptJSONObject2 == null) {
            return null;
        }
        int iOptInt = 0;
        if (!jSONObjectOptJSONObject2.optBoolean(RemoteConfigComponent.FETCH_FILE_NAME, false)) {
            return null;
        }
        List listA = a(jSONObjectOptJSONObject2.optJSONArray("exclude_bundles"));
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("window");
        q0 q0VarB = b(jSONArrayOptJSONArray);
        if (jSONArrayOptJSONArray != null && (jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0)) != null) {
            iOptInt = jSONObjectOptJSONObject.optInt("interval", 0);
        }
        if (iOptInt == 0) {
            tVar = t.a;
        } else if (iOptInt == 1) {
            tVar = t.b;
        } else if (iOptInt != 2) {
            tVar = iOptInt != 3 ? t.a : t.d;
        } else {
            tVar = t.c;
        }
        return new p0(str, n0.a, q0VarB.a, q0VarB.b, q0VarB.c, tVar, listA, Long.valueOf(j));
    }

    public static p0 b(JSONObject jSONObject, String str, long j) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("storage_stats");
        if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.optBoolean(RemoteConfigComponent.FETCH_FILE_NAME, false)) {
            return null;
        }
        List listA = a(jSONObjectOptJSONObject.optJSONArray("exclude_bundles"));
        q0 q0VarB = b(jSONObjectOptJSONObject.optJSONArray("window"));
        return new p0(str, n0.d, q0VarB.a, q0VarB.b, q0VarB.c, t.a, listA, Long.valueOf(j));
    }

    public static p0 a(JSONObject jSONObject, String str, long j) {
        t tVar;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("network_stats");
        if (jSONObjectOptJSONObject2 == null) {
            return null;
        }
        int iOptInt = 0;
        if (!jSONObjectOptJSONObject2.optBoolean(RemoteConfigComponent.FETCH_FILE_NAME, false)) {
            return null;
        }
        List listA = a(jSONObjectOptJSONObject2.optJSONArray("exclude_bundles"));
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("window");
        q0 q0VarB = b(jSONArrayOptJSONArray);
        if (jSONArrayOptJSONArray != null && (jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0)) != null) {
            iOptInt = jSONObjectOptJSONObject.optInt("interval", 0);
        }
        if (iOptInt == 0) {
            tVar = t.a;
        } else if (iOptInt == 1) {
            tVar = t.b;
        } else if (iOptInt == 2) {
            tVar = t.c;
        } else if (iOptInt != 3) {
            tVar = t.a;
        } else {
            tVar = t.d;
        }
        return new p0(str, n0.c, q0VarB.a, q0VarB.b, q0VarB.c, tVar, listA, Long.valueOf(j));
    }

    public static List a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return kx2.b;
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String strOptString = jSONArray.optString(i);
            if (strOptString != null && strOptString.length() != 0) {
                arrayList.add(strOptString);
            }
        }
        return qn1.t0(arrayList);
    }
}
