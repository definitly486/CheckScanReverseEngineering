package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class iw0 implements qv5 {
    public final tq3 a;

    public iw0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        jw0 jw0Var = (jw0) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, jw0Var.a, jSONObject, "lifetime", w36.b, bt4.e);
        as2 as2VarA2 = qq3.a(ys4Var, jw0Var.b, jSONObject, "name", w36.c);
        zw2 zw2Var = jw0Var.c;
        tq3 tq3Var = this.a;
        return new fw0((oe2) qq3.a(ys4Var, zw2Var, jSONObject, "value", tq3Var.Z8, tq3Var.X8), as2VarA, as2VarA2);
    }
}
