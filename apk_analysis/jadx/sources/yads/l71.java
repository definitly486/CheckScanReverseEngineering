package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l71 implements kv5 {
    public final tq3 a;

    public l71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "data", w36.g, zD, (zw2) null);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "data_element_name", zD, null);
        defpackage.cl4 cl4Var = this.a.h2;
        st3 st3Var = n71.a;
        st3Var.getClass();
        return new t71(zw2VarA, zw2VarB, pq3.a(tr4VarB, jSONObject, "prototypes", zD, (zw2) null, cl4Var, st3Var));
    }
}
