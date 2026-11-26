package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class df1 implements qv5 {
    public static af1 a(ys4 ys4Var, ff1 ff1Var, JSONObject jSONObject) {
        zw2 zw2Var = ff1Var.a;
        m36 m36Var = ef1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = ef1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "unit", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new af1(as2Var, qq3.a(ys4Var, ff1Var.b, jSONObject, "value", w36.b, bt4.e, ef1.c));
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (ff1) xq3Var, jSONObject);
    }
}
