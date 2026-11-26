package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a12 implements qv5 {
    public final tq3 a;

    public a12(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final x02 a(ys4 ys4Var, e12 e12Var, JSONObject jSONObject) {
        if (e12Var instanceof b12) {
            df1 df1Var = (df1) this.a.x3.getValue();
            ff1 ff1Var = ((b12) e12Var).a;
            df1Var.getClass();
            return new u02(df1.a(ys4Var, ff1Var, jSONObject));
        }
        if (e12Var instanceof c12) {
            return new v02(((sp1) this.a.U4.getValue()).a(ys4Var, ((c12) e12Var).a, jSONObject));
        }
        if (!(e12Var instanceof d12)) {
            defpackage.me0.e();
            return null;
        }
        hj2 hj2Var = (hj2) this.a.r9.getValue();
        ij2 ij2Var = ((d12) e12Var).a;
        hj2Var.getClass();
        as2 as2VarB = qq3.b(ys4Var, ij2Var.a, jSONObject, "constrained", w36.a, bt4.c);
        zw2 zw2Var = ij2Var.b;
        tq3 tq3Var = hj2Var.a;
        h12 h12Var = (h12) qq3.b(ys4Var, zw2Var, jSONObject, "max_size", tq3Var.S6, tq3Var.Q6);
        zw2 zw2Var2 = ij2Var.c;
        tq3 tq3Var2 = hj2Var.a;
        return new w02(new ej2(h12Var, (h12) qq3.b(ys4Var, zw2Var2, jSONObject, "min_size", tq3Var2.S6, tq3Var2.Q6), as2VarB));
    }
}
