package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jx1 implements qv5 {
    public final tq3 a;

    public jx1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final gx1 a(ys4 ys4Var, mx1 mx1Var, JSONObject jSONObject) {
        if (mx1Var instanceof kx1) {
            df1 df1Var = (df1) this.a.x3.getValue();
            ff1 ff1Var = ((kx1) mx1Var).a;
            df1Var.getClass();
            return new ex1(df1.a(ys4Var, ff1Var, jSONObject));
        }
        if (!(mx1Var instanceof lx1)) {
            defpackage.me0.e();
            return null;
        }
        xx1 xx1Var = (xx1) this.a.i6.getValue();
        zx1 zx1Var = ((lx1) mx1Var).a;
        xx1Var.getClass();
        return new fx1(new ux1(qq3.a(ys4Var, zx1Var.a, jSONObject, "value", yx1.a, tx1.d)));
    }
}
