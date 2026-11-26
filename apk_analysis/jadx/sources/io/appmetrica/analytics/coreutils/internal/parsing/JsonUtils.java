package io.appmetrica.analytics.coreutils.internal.parsing;

import defpackage.dp7;
import defpackage.jp7;
import defpackage.kx6;
import defpackage.lx1;
import defpackage.x74;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonUtils {
    public static final JsonUtils INSTANCE = new JsonUtils();

    private JsonUtils() {
    }

    public static final boolean isEqualTo(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        boolean zEquals;
        if (!jp7.r(dp7.f(jSONObject.keys())).equals(jp7.r(dp7.f(jSONObject2.keys())))) {
            return false;
        }
        for (String str : (lx1) dp7.f(jSONObject.keys())) {
            Object obj = jSONObject.get(str);
            Object obj2 = jSONObject2.get(str);
            if (obj instanceof JSONObject) {
                if (!(obj2 instanceof JSONObject)) {
                    return false;
                }
                zEquals = isEqualTo((JSONObject) obj, (JSONObject) obj2);
            } else if (!(obj instanceof JSONArray)) {
                zEquals = obj.equals(obj2);
            } else {
                if (!(obj2 instanceof JSONArray)) {
                    return false;
                }
                zEquals = isEqualTo((JSONArray) obj, (JSONArray) obj2);
            }
            if (!zEquals) {
                return false;
            }
        }
        return true;
    }

    public static final boolean optBooleanOrDefault(JSONObject jSONObject, String str, boolean z) {
        Boolean boolOptBooleanOrNull = optBooleanOrNull(jSONObject, str);
        return boolOptBooleanOrNull != null ? boolOptBooleanOrNull.booleanValue() : z;
    }

    public static final Boolean optBooleanOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Boolean optBooleanOrNullable(JSONObject jSONObject, String str, Boolean bool) {
        Boolean boolOptBooleanOrNull = optBooleanOrNull(jSONObject, str);
        return boolOptBooleanOrNull == null ? bool : boolOptBooleanOrNull;
    }

    public static final float optFloatOrDefault(JSONObject jSONObject, String str, float f) {
        Float fOptFloatOrNull = optFloatOrNull(jSONObject, str);
        return fOptFloatOrNull != null ? fOptFloatOrNull.floatValue() : f;
    }

    public static final Float optFloatOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return Float.valueOf((float) jSONObject.getDouble(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final byte[] optHexByteArray(JSONObject jSONObject, String str, byte[] bArr) {
        String strOptStringOrNull;
        byte[] bArrHexToBytes;
        if (jSONObject == null || (strOptStringOrNull = optStringOrNull(jSONObject, str)) == null) {
            return bArr;
        }
        try {
            bArrHexToBytes = StringUtils.hexToBytes(strOptStringOrNull);
        } catch (Throwable unused) {
            bArrHexToBytes = null;
        }
        return bArrHexToBytes != null ? bArrHexToBytes : bArr;
    }

    public static /* synthetic */ byte[] optHexByteArray$default(JSONObject jSONObject, String str, byte[] bArr, int i, Object obj) {
        if ((i & 2) != 0) {
            bArr = null;
        }
        return optHexByteArray(jSONObject, str, bArr);
    }

    public static final Integer optIntOrDefault(JSONObject jSONObject, String str, Integer num) {
        Integer numOptIntOrNull = optIntOrNull(jSONObject, str);
        return numOptIntOrNull == null ? num : numOptIntOrNull;
    }

    public static final Integer optIntOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return Integer.valueOf(jSONObject.getInt(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final JSONObject optJsonObjectOrDefault(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        JSONObject jSONObjectOptJsonObjectOrNull = optJsonObjectOrNull(jSONObject, str);
        return jSONObjectOptJsonObjectOrNull == null ? jSONObject2 : jSONObjectOptJsonObjectOrNull;
    }

    public static final JSONObject optJsonObjectOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    public static final JSONObject optJsonObjectOrNullable(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        JSONObject jSONObjectOptJsonObjectOrNull = optJsonObjectOrNull(jSONObject, str);
        return jSONObjectOptJsonObjectOrNull == null ? jSONObject2 : jSONObjectOptJsonObjectOrNull;
    }

    public static final Long optLongOrDefault(JSONObject jSONObject, String str, Long l) {
        Long lOptLongOrNull = optLongOrNull(jSONObject, str);
        return lOptLongOrNull == null ? l : lOptLongOrNull;
    }

    public static final Long optLongOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return Long.valueOf(jSONObject.getLong(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final String optStringOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return jSONObject.getString(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final String optStringOrNullable(JSONObject jSONObject, String str, String str2) {
        String strOptStringOrNull = optStringOrNull(jSONObject, str);
        return strOptStringOrNull == null ? str2 : strOptStringOrNull;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:? A[LOOP:0: B:11:0x0026->B:35:?, LOOP_END, SYNTHETIC] */
    public static final boolean isEqualTo(JSONArray jSONArray, JSONArray jSONArray2) throws JSONException {
        boolean zEquals;
        if (jSONArray.length() == jSONArray2.length()) {
            Iterable iterableN = kx6.n(0, jSONArray.length());
            if ((iterableN instanceof Collection) && ((Collection) iterableN).isEmpty()) {
                return true;
            }
            x74 it = iterableN.iterator();
            while (it.d) {
                int iNextInt = it.nextInt();
                Object obj = jSONArray.get(iNextInt);
                Object obj2 = jSONArray2.get(iNextInt);
                if (obj instanceof JSONObject) {
                    if (obj2 instanceof JSONObject) {
                        zEquals = isEqualTo((JSONObject) obj, (JSONObject) obj2);
                        if (!zEquals) {
                        }
                    }
                } else {
                    if (obj instanceof JSONArray) {
                        if (obj2 instanceof JSONArray) {
                            zEquals = isEqualTo((JSONArray) obj, (JSONArray) obj2);
                        }
                    } else {
                        zEquals = obj.equals(obj2);
                    }
                    if (!zEquals) {
                    }
                }
            }
            return true;
        }
        return false;
    }
}
