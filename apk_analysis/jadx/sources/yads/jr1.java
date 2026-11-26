package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jr1 implements kv5 {
    public static mr1 a(ys4 ys4Var, mr1 mr1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "interpolator", lr1.f, zD, mr1Var != null ? mr1Var.a : null, o11.d, uq3.a);
        r36 r36Var = w36.d;
        zw2 zw2Var = mr1Var != null ? mr1Var.b : null;
        nl3 nl3Var = bt4.d;
        return new mr1(zw2VarB, pq3.b(tr4VarB, jSONObject, "next_page_alpha", r36Var, zD, zw2Var, nl3Var, lr1.g), pq3.b(tr4VarB, jSONObject, "next_page_scale", r36Var, zD, mr1Var != null ? mr1Var.c : null, nl3Var, lr1.h), pq3.b(tr4VarB, jSONObject, "previous_page_alpha", r36Var, zD, mr1Var != null ? mr1Var.d : null, nl3Var, lr1.i), pq3.b(tr4VarB, jSONObject, "previous_page_scale", r36Var, zD, mr1Var != null ? mr1Var.e : null, nl3Var, lr1.j));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
