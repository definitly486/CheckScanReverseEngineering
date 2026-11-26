package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hx0 implements qv5 {
    public final tq3 a;

    public hx0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        kx0 kx0Var = (kx0) xq3Var;
        zw2 zw2Var = kx0Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "headers", tq3Var.X0, tq3Var.V0);
        zw2 zw2Var2 = kx0Var.b;
        m36 m36Var = ix0.b;
        nl3 nl3Var = ww0.d;
        as2 as2Var = ix0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "method", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new xw0(listC, as2Var, qq3.a(ys4Var, kx0Var.c, jSONObject, "url", w36.e, bt4.b));
    }
}
