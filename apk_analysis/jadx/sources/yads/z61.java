package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z61 implements qv5 {
    public final tq3 a;

    public z61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        b71 b71Var = (b71) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, b71Var.a, jSONObject, "color", w36.f, bt4.a);
        as2 as2VarA2 = qq3.a(ys4Var, b71Var.b, jSONObject, "corner_radius", w36.b, bt4.e, a71.a);
        zw2 zw2Var = b71Var.c;
        tq3 tq3Var = this.a;
        return new w61(as2VarA, as2VarA2, (yc1) qq3.b(ys4Var, zw2Var, jSONObject, "paddings", tq3Var.Z2, tq3Var.X2));
    }
}
