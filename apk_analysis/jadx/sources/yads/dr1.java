package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dr1 implements kv5 {
    public static gr1 a(ys4 ys4Var, gr1 gr1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        m36 m36Var = fr1.g;
        zw2 zw2Var = gr1Var != null ? gr1Var.a : null;
        nl3 nl3Var = o11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "interpolator", m36Var, zD, zw2Var, nl3Var, l66Var);
        r36 r36Var = w36.d;
        zw2 zw2Var2 = gr1Var != null ? gr1Var.b : null;
        nl3 nl3Var2 = bt4.d;
        return new gr1(zw2VarB, pq3.b(tr4VarB, jSONObject, "next_page_alpha", r36Var, zD, zw2Var2, nl3Var2, fr1.h), pq3.b(tr4VarB, jSONObject, "next_page_scale", r36Var, zD, gr1Var != null ? gr1Var.c : null, nl3Var2, fr1.i), pq3.b(tr4VarB, jSONObject, "previous_page_alpha", r36Var, zD, gr1Var != null ? gr1Var.d : null, nl3Var2, fr1.j), pq3.b(tr4VarB, jSONObject, "previous_page_scale", r36Var, zD, gr1Var != null ? gr1Var.e : null, nl3Var2, fr1.k), pq3.b(tr4VarB, jSONObject, "reversed_stacking_order", w36.a, zD, gr1Var != null ? gr1Var.f : null, bt4.c, l66Var));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
