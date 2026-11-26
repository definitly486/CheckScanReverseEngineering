package yads;

import defpackage.ua8;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gt4 {
    public static final ft4 a = new ft4(ht4.MISSING_VARIABLE, "", null, null, null, 28);

    public static final ft4 a(int i, Object obj) {
        return new ft4(ht4.TYPE_MISMATCH, "Item builder data at " + i + " position has wrong type: " + obj.getClass().getName(), null, null, null, 28);
    }

    public static final ft4 b(JSONArray jSONArray, String str, int i, Object obj) {
        ht4 ht4Var = ht4.TYPE_MISMATCH;
        String name = obj.getClass().getName();
        StringBuilder sbE = defpackage.ng.e(i, "Value at ", " position of '", str, "' has wrong type ");
        sbE.append(name);
        return new ft4(ht4Var, sbE.toString(), null, new mq3(jSONArray), ar3.a(jSONArray), 4);
    }

    public static final ft4 a(String str) {
        return new ft4(ht4.MISSING_VALUE, defpackage.me0.c("Value for key 'id' at path '", str, "' is missing"), null, null, null, 28);
    }

    public static final ft4 b(JSONObject jSONObject, String str, Object obj) {
        return new ft4(ht4.TYPE_MISMATCH, defpackage.pg.g("Value for key '", str, "' has wrong type ", obj.getClass().getName()), null, new sq3(jSONObject), ar3.a(jSONObject), 4);
    }

    public static final ft4 a(String str, String str2, Object obj, ClassCastException classCastException) {
        return new ft4(ht4.TYPE_MISMATCH, defpackage.l2.d(defpackage.ad2.d("Expression '", str, "': '", str2, "' received value of wrong type: '"), obj, "'"), classCastException, null, null, 24);
    }

    public static final ft4 b(String str, JSONObject jSONObject) {
        return new ft4(ht4.MISSING_TEMPLATE, defpackage.me0.c("Template '", str, "' is missing!"), null, new sq3(jSONObject), ar3.a(jSONObject), 4);
    }

    public static final ft4 a(String str, JSONObject jSONObject) {
        return new ft4(ht4.MISSING_VALUE, defpackage.me0.c("Value for key '", str, "' is missing"), null, new sq3(jSONObject), ar3.a(jSONObject), 4);
    }

    public static final ft4 b(String str) {
        return new ft4(ht4.MISSING_VARIABLE, defpackage.bj.c("No variable could be resolved for '", str), null, null, null, 24);
    }

    public static final ft4 a(JSONObject jSONObject, String str, Object obj) {
        return new ft4(ht4.INVALID_VALUE, defpackage.n2.d("Value '", a(obj), "' for key '", str, "' is not valid"), null, new sq3(jSONObject), ar3.a(jSONObject), 4);
    }

    public static final ft4 a(String str, String str2, Object obj, Exception exc) {
        return new ft4(ht4.INVALID_VALUE, defpackage.l2.d(defpackage.ad2.d("Field '", str, "' with expression '", str2, "' received wrong value: '"), obj, "'"), exc, null, null, 24);
    }

    public static final String a(Object obj) {
        String strValueOf = String.valueOf(obj);
        return strValueOf.length() > 100 ? ua8.l0(97, strValueOf).concat("...") : strValueOf;
    }

    public static final ft4 a(JSONObject jSONObject, String str, Object obj, Exception exc) {
        return new ft4(ht4.INVALID_VALUE, defpackage.n2.d("Value '", a(obj), "' for key '", str, "' is not valid"), exc, new sq3(jSONObject), null, 16);
    }

    public static final ft4 a(JSONArray jSONArray, String str, int i, Object obj, Exception exc) {
        return new ft4(ht4.INVALID_VALUE, defpackage.me0.d(defpackage.mz0.a(i, "Value '", a(obj), "' at ", " position of '"), str, "' is not valid"), exc, new mq3(jSONArray), null, 16);
    }

    public static final ft4 a(JSONArray jSONArray, String str, int i, Object obj) {
        return new ft4(ht4.INVALID_VALUE, defpackage.me0.d(defpackage.mz0.a(i, "Value '", a(obj), "' at ", " position of '"), str, "' is not valid"), null, new mq3(jSONArray), ar3.a(jSONArray), 4);
    }

    public static final ft4 a(Object obj, String str) {
        return new ft4(ht4.INVALID_VALUE, defpackage.n2.d("Value '", a(obj), "' at path '", str, "' is not valid"), null, null, null, 28);
    }

    public static final ft4 a(String str, Object obj, Exception exc) {
        return new ft4(ht4.INVALID_VALUE, defpackage.n2.d("Value '", a(obj), "' for key '", str, "' could not be resolved"), exc, null, null, 24);
    }

    public static final ft4 a(String str, String str2, Object obj) {
        return new ft4(ht4.INVALID_VALUE, defpackage.me0.d(defpackage.ad2.d("Value '", a(obj), "' for key '", str, "' at path '"), str2, "' is not valid"), null, null, null, 28);
    }

    public static final ft4 a(String str, String str2, String str3, vo2 vo2Var) {
        return new ft4(ht4.MISSING_VARIABLE, defpackage.me0.d(defpackage.ad2.d("Undefined variable '", str3, "' at \"", str, "\": \""), str2, "\""), vo2Var, null, null, 24);
    }

    public static final ft4 a(JSONObject jSONObject, String str, Exception exc) {
        ht4 ht4Var = ht4.MISSING_TEMPLATE;
        return new ft4(defpackage.me0.c("Value for key '", str, "' is failed to create"), exc, new sq3(jSONObject), ar3.a(jSONObject));
    }

    public static final ft4 a(JSONArray jSONArray, String str, int i, Exception exc) {
        ht4 ht4Var = ht4.MISSING_TEMPLATE;
        return new ft4(defpackage.c9.d(i, "Value at ", " position of '", str, "' is failed to create"), exc, new mq3(jSONArray), ar3.a(jSONArray));
    }
}
