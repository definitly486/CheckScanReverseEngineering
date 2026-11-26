package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xw1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw1 zw1Var = (zw1) xq3Var;
        zw2 zw2Var = zw1Var.a;
        m36 m36Var = yw1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = yw1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "unit", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new uw1(as2Var, qq3.a(ys4Var, zw1Var.b, jSONObject, "value", w36.b, bt4.e));
    }
}
