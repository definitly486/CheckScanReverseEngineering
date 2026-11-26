package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class re1 implements kv5 {
    public final tq3 a;

    public re1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final ze1 a(ys4 ys4Var, ze1 ze1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "always_visible", w36.a, zD, ze1Var != null ? ze1Var.a : null, bt4.c, uq3.a);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "pattern", w36.c, zD, ze1Var != null ? ze1Var.b : null);
        zw2 zw2Var = ze1Var != null ? ze1Var.c : null;
        defpackage.cl4 cl4Var = this.a.t3;
        st3 st3Var = te1.b;
        st3Var.getClass();
        return new ze1(zw2VarB, zw2VarA, pq3.a(tr4VarB, jSONObject, "pattern_elements", zD, zw2Var, cl4Var, st3Var), pq3.a(tr4VarB, jSONObject, "raw_text_variable", zD, ze1Var != null ? ze1Var.d : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
