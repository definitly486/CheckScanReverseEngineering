package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class oz1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        uz1 uz1Var = (uz1) xq3Var;
        zw2 zw2Var = uz1Var.a;
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        as2 as2Var = pz1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "color", p36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = uz1Var.b;
        m36 m36Var = pz1.c;
        nl3 nl3Var2 = iz1.d;
        as2 as2Var2 = pz1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var, nl3Var2, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        return new jz1(as2Var, as2Var2);
    }
}
