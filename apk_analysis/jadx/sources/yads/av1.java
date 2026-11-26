package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class av1 implements qv5 {
    public final tq3 a;

    public av1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ru1 a(ys4 ys4Var, iv1 iv1Var, JSONObject jSONObject) {
        if (!(iv1Var instanceof gv1)) {
            if (!(iv1Var instanceof hv1)) {
                defpackage.me0.e();
                return null;
            }
            ev1 ev1Var = (ev1) this.a.N5.getValue();
            fv1 fv1Var = ((hv1) iv1Var).a;
            ev1Var.getClass();
            return new qu1(new bv1(qq3.a(ys4Var, fv1Var.a, jSONObject, "value", w36.d, bt4.d)));
        }
        vu1 vu1Var = (vu1) this.a.K5.getValue();
        xu1 xu1Var = ((gv1) iv1Var).a;
        vu1Var.getClass();
        zw2 zw2Var = xu1Var.a;
        m36 m36Var = wu1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = wu1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "unit", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new pu1(new su1(as2Var, qq3.b(ys4Var, xu1Var.b, jSONObject, "value", w36.b, bt4.e)));
    }
}
