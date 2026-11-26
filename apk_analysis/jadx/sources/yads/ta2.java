package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ta2 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        va2 va2Var = (va2) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, va2Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = va2Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = ua2.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var, jSONObject, "is_enabled", o36Var, nl3Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new qa2(as2VarA, as2Var);
    }
}
