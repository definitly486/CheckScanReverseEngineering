package yads;

import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wo0 extends u13 {
    public static final wo0 a = new wo0();
    public static final List b = u96.h(new w13(xo2.DICT, 0));
    public static final xo2 c = xo2.STRING;

    public static String a(Object obj) {
        if (!(obj instanceof Map)) {
            return obj instanceof String ? defpackage.ch.c(obj, "\"", "\"") : obj.toString();
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            arrayList.add("\"" + key + "\":" + (value != null ? a(value) : null));
        }
        return defpackage.me0.c("{", defpackage.qn1.a0(arrayList, StringUtils.COMMA, null, null, 0, null, 62), "}");
    }

    @Override // yads.u13
    public final String c() {
        return "toString";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        return a(a((JSONObject) objT));
    }

    public static SortedMap a(JSONObject jSONObject) throws JSONException {
        ArrayList<String> arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        defpackage.nn1.I(arrayList);
        TreeMap treeMap = new TreeMap();
        defpackage.n05.j(treeMap, new defpackage.b36[0]);
        for (String str : arrayList) {
            Object objA = jSONObject.get(str);
            if (objA instanceof JSONObject) {
                objA = a((JSONObject) objA);
            }
            treeMap.put(str, objA);
        }
        return treeMap;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
