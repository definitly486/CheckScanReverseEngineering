package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jm1 implements kv5 {
    public static mm1 a(ys4 ys4Var, mm1 mm1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        o36 o36Var = w36.a;
        zw2 zw2Var = mm1Var != null ? mm1Var.a : null;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        return new mm1(pq3.b(tr4VarB, jSONObject, "allow_empty", o36Var, zD, zw2Var, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "condition", o36Var, zD, mm1Var != null ? mm1Var.b : null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "label_id", w36.c, zD, mm1Var != null ? mm1Var.c : null), pq3.a(tr4VarB, jSONObject, "variable", zD, mm1Var != null ? mm1Var.d : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
