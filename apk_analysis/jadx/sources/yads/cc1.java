package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cc1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        m36 m36Var = ec1.b;
        nl3 nl3Var = g12.d;
        l66 l66Var = uq3.a;
        return new fc1(pq3.b(tr4VarB, jSONObject, "unit", m36Var, zD, null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "value", w36.d, zD, null, bt4.d, l66Var));
    }
}
