package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r91 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new u91(pq3.b(tr4VarB, jSONObject, "bottom-left", s36Var, zD, null, nl3Var, t91.a), pq3.b(tr4VarB, jSONObject, "bottom-right", s36Var, zD, null, nl3Var, t91.b), pq3.b(tr4VarB, jSONObject, "top-left", s36Var, zD, null, nl3Var, t91.c), pq3.b(tr4VarB, jSONObject, "top-right", s36Var, zD, null, nl3Var, t91.d));
    }
}
