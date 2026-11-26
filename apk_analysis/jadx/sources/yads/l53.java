package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class l53 extends vi {
    public static final l53 c = new l53();
    public static final String d = "getOptArrayFromArray";
    public static final List e = u96.i(new w13(xo2.ARRAY, 0), new w13(xo2.INTEGER, 0));

    public l53() {
        super(xo2.ARRAY);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = gi.a(d, list);
        JSONArray jSONArray = objA instanceof JSONArray ? (JSONArray) objA : null;
        return jSONArray == null ? new JSONArray() : jSONArray;
    }

    @Override // yads.u13
    public final String c() {
        return d;
    }

    @Override // yads.vi, yads.u13
    public final List a() {
        return e;
    }
}
