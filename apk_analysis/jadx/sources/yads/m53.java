package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class m53 extends u13 {
    public static final m53 a = new m53();
    public static final List b = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING));
    public static final xo2 c = xo2.ARRAY;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        JSONArray jSONArray = new JSONArray();
        Object objA = jo0.a(list, (Object) jSONArray, true);
        JSONArray jSONArray2 = objA instanceof JSONArray ? (JSONArray) objA : null;
        return jSONArray2 == null ? jSONArray : jSONArray2;
    }

    @Override // yads.u13
    public final String c() {
        return "getOptArrayFromDict";
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
    public final List a() {
        return b;
    }
}
