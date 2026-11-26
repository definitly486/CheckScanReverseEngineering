package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q51 implements qv5 {
    public final tq3 a;

    public q51(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        u51 u51Var = (u51) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, u51Var.a, jSONObject, "corner_radius", w36.b, bt4.e, r51.b);
        zw2 zw2Var = u51Var.b;
        tq3 tq3Var = this.a;
        p91 p91Var = (p91) qq3.b(ys4Var, zw2Var, jSONObject, "corners_radius", tq3Var.u2, tq3Var.s2);
        zw2 zw2Var2 = u51Var.c;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = r51.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "has_shadow", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = u51Var.d;
        tq3 tq3Var2 = this.a;
        xz1 xz1Var = (xz1) qq3.b(ys4Var, zw2Var3, jSONObject, "shadow", tq3Var2.J6, tq3Var2.H6);
        zw2 zw2Var4 = u51Var.e;
        tq3 tq3Var3 = this.a;
        return new f51(as2VarB, p91Var, as2Var, xz1Var, (l42) qq3.b(ys4Var, zw2Var4, jSONObject, "stroke", tq3Var3.F7, tq3Var3.D7));
    }
}
