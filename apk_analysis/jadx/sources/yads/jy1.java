package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jy1 implements qv5 {
    public final tq3 a;

    public jy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final gy1 a(ys4 ys4Var, ly1 ly1Var, JSONObject jSONObject) {
        as2 as2VarB = qq3.b(ys4Var, ly1Var.a, jSONObject, "background_color", w36.f, bt4.a);
        zw2 zw2Var = ly1Var.b;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, "corner_radius", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = ky1.a;
        }
        zw2 zw2Var2 = ly1Var.c;
        tq3 tq3Var2 = this.a;
        af1 af1Var2 = (af1) qq3.b(ys4Var, zw2Var2, jSONObject, "item_height", tq3Var2.x3, tq3Var2.v3);
        if (af1Var2 == null) {
            af1Var2 = ky1.b;
        }
        af1 af1Var3 = af1Var2;
        zw2 zw2Var3 = ly1Var.d;
        tq3 tq3Var3 = this.a;
        af1 af1Var4 = (af1) qq3.b(ys4Var, zw2Var3, jSONObject, "item_width", tq3Var3.x3, tq3Var3.v3);
        if (af1Var4 == null) {
            af1Var4 = ky1.c;
        }
        af1 af1Var5 = af1Var4;
        zw2 zw2Var4 = ly1Var.e;
        tq3 tq3Var4 = this.a;
        return new gy1(as2VarB, af1Var, af1Var3, af1Var5, (l42) qq3.b(ys4Var, zw2Var4, jSONObject, "stroke", tq3Var4.F7, tq3Var4.D7));
    }
}
