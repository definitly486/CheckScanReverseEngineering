package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ma2 implements kv5 {
    public final tq3 a;

    public ma2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final pa2 a(ys4 ys4Var, pa2 pa2Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        p36 p36Var = w36.f;
        zw2 zw2Var = pa2Var != null ? pa2Var.a : null;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "color", p36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "density", w36.d, zD, pa2Var != null ? pa2Var.b : null, bt4.d, oa2.e);
        o36 o36Var = w36.a;
        zw2 zw2Var2 = pa2Var != null ? pa2Var.c : null;
        nl3 nl3Var2 = bt4.c;
        return new pa2(zw2VarA, zw2VarB, pq3.b(tr4VarB, jSONObject, "is_animated", o36Var, zD, zw2Var2, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "is_enabled", o36Var, zD, pa2Var != null ? pa2Var.d : null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "particle_size", zD, pa2Var != null ? pa2Var.e : null, this.a.w3));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
