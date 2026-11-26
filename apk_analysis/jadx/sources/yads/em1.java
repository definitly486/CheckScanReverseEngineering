package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class em1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        gm1 gm1Var = (gm1) xq3Var;
        zw2 zw2Var = gm1Var.a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = fm1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "allow_empty", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new bm1(as2Var, qq3.b(ys4Var, gm1Var.b, jSONObject, "label_id", w36.c), (String) qq3.a(ys4Var, gm1Var.c, jSONObject, "variable"));
    }
}
