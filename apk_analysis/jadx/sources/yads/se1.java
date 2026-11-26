package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class se1 implements qv5 {
    public final tq3 a;

    public se1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final pe1 a(ys4 ys4Var, ze1 ze1Var, JSONObject jSONObject) {
        zw2 zw2Var = ze1Var.a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = te1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "always_visible", o36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = qq3.a(ys4Var, ze1Var.b, jSONObject, "pattern", w36.c);
        zw2 zw2Var2 = ze1Var.c;
        tq3 tq3Var = this.a;
        return new pe1(as2Var, as2VarA2, qq3.a(ys4Var, zw2Var2, jSONObject, "pattern_elements", tq3Var.u3, tq3Var.s3, te1.b), (String) qq3.a(ze1Var.d, jSONObject, "raw_text_variable"));
    }
}
