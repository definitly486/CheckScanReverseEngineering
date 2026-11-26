package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tm1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        vm1 vm1Var = (vm1) xq3Var;
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
        return new qm1(as2Var, qq3.a(ys4Var, zw2Var2, jSONObject, "label_id", u36Var), qq3.a(ys4Var, vm1Var.c, jSONObject, "pattern", u36Var), (String) qq3.a(vm1Var.d, jSONObject, "variable"));
    }
}
