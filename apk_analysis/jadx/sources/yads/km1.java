package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class km1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        mm1 mm1Var = (mm1) xq3Var;
        zw2 zw2Var = mm1Var.a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = lm1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "allow_empty", o36Var, nl3Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        return new hm1(as2VarA, qq3.a(ys4Var, mm1Var.b, jSONObject, "condition", o36Var, nl3Var), qq3.a(ys4Var, mm1Var.c, jSONObject, "label_id", w36.c), (String) qq3.a(mm1Var.d, jSONObject, "variable"));
    }
}
