package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cw0 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ew0 ew0Var = (ew0) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, ew0Var.a, jSONObject, "state_id", w36.c);
        zw2 zw2Var = ew0Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = dw0.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var, jSONObject, "temporary", o36Var, nl3Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new zv0(as2VarA, as2Var);
    }
}
