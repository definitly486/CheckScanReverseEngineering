package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qv1 implements qv5 {
    public final tq3 a;

    public qv1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        rv1 rv1Var = (rv1) xq3Var;
        zw2 zw2Var = rv1Var.a;
        tq3 tq3Var = this.a;
        ac1 ac1Var = (ac1) qq3.a(ys4Var, zw2Var, jSONObject, "x", tq3Var.N2, tq3Var.L2);
        zw2 zw2Var2 = rv1Var.b;
        tq3 tq3Var2 = this.a;
        return new nv1(ac1Var, (ac1) qq3.a(ys4Var, zw2Var2, jSONObject, "y", tq3Var2.N2, tq3Var2.L2));
    }
}
