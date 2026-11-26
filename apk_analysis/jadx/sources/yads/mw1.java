package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mw1 implements qv5 {
    public final tq3 a;

    public mw1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final jw1 a(ys4 ys4Var, pw1 pw1Var, JSONObject jSONObject) {
        if (!(pw1Var instanceof nw1)) {
            if (!(pw1Var instanceof ow1)) {
                defpackage.me0.e();
                return null;
            }
            qx1 qx1Var = (qx1) this.a.f6.getValue();
            rx1 rx1Var = ((ow1) pw1Var).a;
            qx1Var.getClass();
            return new iw1(new nx1(qq3.a(ys4Var, rx1Var.a, jSONObject, "value", w36.d, bt4.d)));
        }
        xw1 xw1Var = (xw1) this.a.Z5.getValue();
        zw1 zw1Var = ((nw1) pw1Var).a;
        xw1Var.getClass();
        zw2 zw2Var = zw1Var.a;
        m36 m36Var = yw1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = yw1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "unit", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new hw1(new uw1(as2Var, qq3.a(ys4Var, zw1Var.b, jSONObject, "value", w36.b, bt4.e)));
    }
}
