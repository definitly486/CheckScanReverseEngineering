package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class u53 extends u13 {
    public static final u53 a = new u53();
    public static final List b;
    public static final xo2 c;

    static {
        xo2 xo2Var = xo2.DICT;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2.STRING));
        c = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        JSONObject jSONObject = new JSONObject();
        Object objA = jo0.a(list, (Object) jSONObject, true);
        JSONObject jSONObject2 = objA instanceof JSONObject ? (JSONObject) objA : null;
        return jSONObject2 == null ? jSONObject : jSONObject2;
    }

    @Override // yads.u13
    public final String c() {
        return "getOptDictFromDict";
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
