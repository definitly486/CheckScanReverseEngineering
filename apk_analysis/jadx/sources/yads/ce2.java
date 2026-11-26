package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ce2 implements kv5 {
    public final tq3 a;

    public ce2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        defpackage.cl4 cl4Var = this.a.l1;
        st3 st3Var = ee2.c;
        st3Var.getClass();
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "actions", zD, (zw2) null, cl4Var, st3Var);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        return new fe2(zw2VarA, pq3.a(tr4VarB, jSONObject, "condition", o36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "mode", ee2.b, zD, null, zd2.d, l66Var));
    }
}
