package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pm1 implements qv5 {
    public final tq3 a;

    public pm1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final am1 a(ys4 ys4Var, ym1 ym1Var, JSONObject jSONObject) {
        if (ym1Var instanceof xm1) {
            tm1 tm1Var = (tm1) this.a.z4.getValue();
            vm1 vm1Var = ((xm1) ym1Var).a;
            tm1Var.getClass();
            zw2 zw2Var = vm1Var.a;
            o36 o36Var = w36.a;
            nl3 nl3Var = bt4.c;
            as2 as2Var = um1.a;
            as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "allow_empty", o36Var, nl3Var, as2Var);
            if (as2VarA != null) {
                as2Var = as2VarA;
            }
            zw2 zw2Var2 = vm1Var.b;
            u36 u36Var = w36.c;
            return new zl1(new qm1(as2Var, qq3.a(ys4Var, zw2Var2, jSONObject, "label_id", u36Var), qq3.a(ys4Var, vm1Var.c, jSONObject, "pattern", u36Var), (String) qq3.a(vm1Var.d, jSONObject, "variable")));
        }
        if (!(ym1Var instanceof wm1)) {
            defpackage.me0.e();
            return null;
        }
        km1 km1Var = (km1) this.a.w4.getValue();
        mm1 mm1Var = ((wm1) ym1Var).a;
        km1Var.getClass();
        zw2 zw2Var3 = mm1Var.a;
        o36 o36Var2 = w36.a;
        nl3 nl3Var2 = bt4.c;
        as2 as2Var2 = lm1.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "allow_empty", o36Var2, nl3Var2, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        return new yl1(new hm1(as2Var2, qq3.a(ys4Var, mm1Var.b, jSONObject, "condition", o36Var2, nl3Var2), qq3.a(ys4Var, mm1Var.c, jSONObject, "label_id", w36.c), (String) qq3.a(mm1Var.d, jSONObject, "variable")));
    }
}
