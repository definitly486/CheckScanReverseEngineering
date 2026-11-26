package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kp1 implements qv5 {
    public final tq3 a;

    public kp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final dp1 a(ys4 ys4Var, np1 np1Var, JSONObject jSONObject) {
        ds2 ds2VarA;
        zw2 zw2Var = np1Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = lp1.b;
        as2 as2Var = lp1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "angle", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = np1Var.b;
        tq3 tq3Var = this.a;
        List listA = qq3.a(ys4Var, zw2Var2, jSONObject, tq3Var.R4, tq3Var.P4, lp1.d);
        zw2 zw2Var3 = np1Var.c;
        p36 p36Var = w36.f;
        nl3 nl3Var2 = bt4.a;
        st3 st3Var = lp1.c;
        l66 l66Var2 = uq3.a;
        if (zw2Var3.b && jSONObject.has("colors")) {
            ds2VarA = oq3.a(ys4Var, jSONObject, "colors", p36Var, nl3Var2, st3Var, l66Var2);
        } else {
            int i = zw2Var3.a;
            if (i == 2) {
                ds2VarA = (ds2) ((yw2) zw2Var3).c;
            } else {
                ds2VarA = i == 3 ? oq3.a(ys4Var, jSONObject, ((xw2) zw2Var3).c, p36Var, nl3Var2, st3Var, l66Var2) : null;
            }
        }
        return new dp1(as2Var, listA, ds2VarA);
    }
}
