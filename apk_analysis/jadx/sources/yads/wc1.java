package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wc1 implements qv5 {
    public final tq3 a;

    public wc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        xc1 xc1Var = (xc1) xq3Var;
        if (xc1Var == null) {
            defpackage.me0.e();
            return null;
        }
        j02 j02Var = (j02) this.a.M6.getValue();
        k02 k02Var = xc1Var.a;
        j02Var.getClass();
        as2 as2VarA = qq3.a(ys4Var, k02Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = k02Var.b;
        tq3 tq3Var = j02Var.a;
        f02 f02Var = (f02) qq3.a(ys4Var, zw2Var, jSONObject, "shape", tq3Var.P6, tq3Var.N6);
        zw2 zw2Var2 = k02Var.c;
        tq3 tq3Var2 = j02Var.a;
        return new tc1(new g02(as2VarA, f02Var, (l42) qq3.b(ys4Var, zw2Var2, jSONObject, "stroke", tq3Var2.F7, tq3Var2.D7)));
    }
}
