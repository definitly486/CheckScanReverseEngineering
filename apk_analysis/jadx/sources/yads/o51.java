package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o51 implements ln0 {
    public final tq3 a;

    public o51(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "corner_radius", w36.b, bt4.e, r51.b, (as2) null);
        p91 p91Var = (p91) wq3.c(ys4Var, jSONObject, "corners_radius", this.a.s2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = r51.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "has_shadow", o36Var, nl3Var, uq3.a, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        return new f51(as2VarA, p91Var, as2VarA2, (xz1) wq3.c(ys4Var, jSONObject, "shadow", this.a.H6), (l42) wq3.c(ys4Var, jSONObject, "stroke", this.a.D7));
    }
}
