package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gx0 implements kv5 {
    public final tq3 a;

    public gx0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "headers", zD, null, this.a.W0);
        m36 m36Var = ix0.b;
        nl3 nl3Var = ww0.d;
        l66 l66Var = uq3.a;
        return new kx0(zw2VarC, pq3.b(tr4VarB, jSONObject, "method", m36Var, zD, null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "url", w36.e, zD, null, bt4.b, l66Var));
    }
}
