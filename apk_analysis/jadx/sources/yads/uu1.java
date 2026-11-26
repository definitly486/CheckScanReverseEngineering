package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class uu1 implements kv5 {
    public static xu1 a(ys4 ys4Var, xu1 xu1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        m36 m36Var = wu1.b;
        zw2 zw2Var = xu1Var != null ? xu1Var.a : null;
        nl3 nl3Var = g12.d;
        l66 l66Var = uq3.a;
        return new xu1(pq3.b(tr4VarB, jSONObject, "unit", m36Var, zD, zw2Var, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "value", w36.b, zD, xu1Var != null ? xu1Var.b : null, bt4.e, l66Var));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
