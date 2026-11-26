package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o42 implements qv5 {
    public final tq3 a;

    public o42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        j52 j52Var = (j52) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, j52Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = j52Var.b;
        tq3 tq3Var = this.a;
        s42 s42Var = (s42) qq3.b(ys4Var, zw2Var, jSONObject, "style", tq3Var.C7, tq3Var.A7);
        if (s42Var == null) {
            s42Var = p42.a;
        }
        zw2 zw2Var2 = j52Var.c;
        m36 m36Var = p42.d;
        nl3 nl3Var = g12.d;
        xr2 xr2Var = p42.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "unit", m36Var, nl3Var, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = j52Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = p42.e;
        as2 as2Var = p42.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, TJAdUnitConstants.String.WIDTH, r36Var, nl3Var2, l66Var, as2Var);
        if (as2VarA3 != null) {
            as2Var = as2VarA3;
        }
        return new l42(as2VarA, s42Var, as2VarA2, as2Var);
    }
}
