package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hj2 implements qv5 {
    public final tq3 a;

    public hj2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ij2 ij2Var = (ij2) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, ij2Var.a, jSONObject, "constrained", w36.a, bt4.c);
        zw2 zw2Var = ij2Var.b;
        tq3 tq3Var = this.a;
        h12 h12Var = (h12) qq3.b(ys4Var, zw2Var, jSONObject, "max_size", tq3Var.S6, tq3Var.Q6);
        zw2 zw2Var2 = ij2Var.c;
        tq3 tq3Var2 = this.a;
        return new ej2(h12Var, (h12) qq3.b(ys4Var, zw2Var2, jSONObject, "min_size", tq3Var2.S6, tq3Var2.Q6), as2VarB);
    }
}
