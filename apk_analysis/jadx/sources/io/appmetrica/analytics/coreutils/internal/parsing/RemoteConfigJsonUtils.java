package io.appmetrica.analytics.coreutils.internal.parsing;

import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.ha1;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class RemoteConfigJsonUtils {
    public static final RemoteConfigJsonUtils INSTANCE = new RemoteConfigJsonUtils();

    private RemoteConfigJsonUtils() {
    }

    public static final boolean extractFeature(JSONObject jSONObject, String str, boolean z) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        try {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("features");
            if (jSONObjectOptJSONObject3 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("list")) != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str)) != null) {
                return jSONObjectOptJSONObject2.optBoolean(TJAdUnitConstants.String.ENABLED, z);
            }
        } catch (Throwable unused) {
        }
        return z;
    }

    public static final byte[][] extractHosts(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("query_hosts");
        if (jSONObjectOptJSONObject3 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("list")) == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str)) == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("urls")) == null) {
            return new byte[0][];
        }
        int length = jSONArrayOptJSONArray.length();
        byte[][] bArr = new byte[length][];
        for (int i = 0; i < length; i++) {
            bArr[i] = jSONArrayOptJSONArray.optString(i).getBytes(ha1.b);
        }
        return bArr;
    }

    public static final long extractMillisFromSecondsOrDefault(JSONObject jSONObject, String str, long j) {
        return extractMillisOrDefault(jSONObject, str, TimeUnit.SECONDS, j);
    }

    public static final long extractMillisOrDefault(JSONObject jSONObject, String str, TimeUnit timeUnit, long j) {
        return WrapUtils.getMillisOrDefault(JsonUtils.optLongOrNull(jSONObject, str), timeUnit, j);
    }

    public static final String extractQuery(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        try {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("queries");
            if (jSONObjectOptJSONObject3 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("list")) != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str)) != null) {
                RemoteConfigJsonUtils remoteConfigJsonUtils = INSTANCE;
                String strOptString = jSONObjectOptJSONObject2.optString("url", "");
                remoteConfigJsonUtils.getClass();
                if (!aa4.e(strOptString, "")) {
                    return strOptString;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
