package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k92 implements qv5 {
    public final tq3 a;

    public k92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final h92 a(ys4 ys4Var, n92 n92Var, JSONObject jSONObject) {
        if (n92Var instanceof m92) {
            w22 w22Var = (w22) this.a.k7.getValue();
            x22 x22Var = ((m92) n92Var).a;
            w22Var.getClass();
            return new g92(new t22(qq3.a(ys4Var, x22Var.a, jSONObject, "color", w36.f, bt4.a)));
        }
        if (!(n92Var instanceof l92)) {
            defpackage.me0.e();
            return null;
        }
        z61 z61Var = (z61) this.a.c2.getValue();
        b71 b71Var = ((l92) n92Var).a;
        z61Var.getClass();
        as2 as2VarA = qq3.a(ys4Var, b71Var.a, jSONObject, "color", w36.f, bt4.a);
        as2 as2VarA2 = qq3.a(ys4Var, b71Var.b, jSONObject, "corner_radius", w36.b, bt4.e, a71.a);
        zw2 zw2Var = b71Var.c;
        tq3 tq3Var = z61Var.a;
        return new f92(new w61(as2VarA, as2VarA2, (yc1) qq3.b(ys4Var, zw2Var, jSONObject, "paddings", tq3Var.Z2, tq3Var.X2)));
    }
}
