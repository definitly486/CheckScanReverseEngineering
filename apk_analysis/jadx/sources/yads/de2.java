package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class de2 implements qv5 {
    public final tq3 a;

    public de2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        fe2 fe2Var = (fe2) xq3Var;
        zw2 zw2Var = fe2Var.a;
        tq3 tq3Var = this.a;
        List listA = qq3.a(ys4Var, zw2Var, jSONObject, "actions", tq3Var.m1, tq3Var.k1, ee2.c);
        as2 as2VarA = qq3.a(ys4Var, fe2Var.b, jSONObject, "condition", w36.a, bt4.c);
        zw2 zw2Var2 = fe2Var.c;
        m36 m36Var = ee2.b;
        nl3 nl3Var = zd2.d;
        as2 as2Var = ee2.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "mode", m36Var, nl3Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new ae2(listA, as2VarA, as2Var);
    }
}
