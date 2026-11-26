package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class la2 implements ln0 {
    public final tq3 a;

    public la2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ka2 a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, l66Var);
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var2 = oa2.e;
        xr2 xr2Var = oa2.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "density", r36Var, nl3Var2, l66Var2, xr2Var);
        as2 as2Var = as2VarA2 == null ? xr2Var : as2VarA2;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var2 = oa2.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "is_animated", o36Var, nl3Var3, l66Var, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        xr2 xr2Var3 = oa2.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var3, l66Var, xr2Var3);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var3;
        }
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "particle_size", this.a.v3);
        if (af1Var == null) {
            af1Var = oa2.d;
        }
        return new ka2(as2VarA, as2Var, as2VarA3, as2VarA4, af1Var);
    }
}
