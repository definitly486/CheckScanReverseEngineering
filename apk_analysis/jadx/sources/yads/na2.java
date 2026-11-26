package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class na2 implements qv5 {
    public final tq3 a;

    public na2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ka2 a(ys4 ys4Var, pa2 pa2Var, JSONObject jSONObject) {
        as2 as2VarA = qq3.a(ys4Var, pa2Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = pa2Var.b;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = oa2.e;
        as2 as2Var = oa2.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var, jSONObject, "density", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        zw2 zw2Var2 = pa2Var.c;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var = oa2.b;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var2, jSONObject, "is_animated", o36Var, nl3Var2, xr2Var);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var;
        }
        zw2 zw2Var3 = pa2Var.d;
        as2 as2Var2 = oa2.c;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var3, jSONObject, "is_enabled", o36Var, nl3Var2, as2Var2);
        if (as2VarA4 != null) {
            as2Var2 = as2VarA4;
        }
        zw2 zw2Var4 = pa2Var.e;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var4, jSONObject, "particle_size", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = oa2.d;
        }
        return new ka2(as2VarA, as2Var, as2VarA3, as2Var2, af1Var);
    }
}
