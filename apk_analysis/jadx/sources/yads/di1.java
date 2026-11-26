package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class di1 implements kv5 {
    public final tq3 a;

    public di1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final gi1 a(ys4 ys4Var, gi1 gi1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, gi1Var != null ? gi1Var.a : null, bt4.d, fi1.i);
        m36 m36Var = fi1.f;
        zw2 zw2Var = gi1Var != null ? gi1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        return new gi1(zw2VarB, pq3.b(tr4VarB, jSONObject, "content_alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "content_alignment_vertical", fi1.g, zD, gi1Var != null ? gi1Var.c : null, h11.d, l66Var), pq3.c(tr4VarB, jSONObject, "filters", zD, gi1Var != null ? gi1Var.d : null, this.a.k3), pq3.a(tr4VarB, jSONObject, "image_url", w36.e, zD, gi1Var != null ? gi1Var.e : null, bt4.b, l66Var), pq3.b(tr4VarB, jSONObject, "preload_required", w36.a, zD, gi1Var != null ? gi1Var.f : null, bt4.c, l66Var), pq3.b(tr4VarB, jSONObject, "scale", fi1.h, zD, gi1Var != null ? gi1Var.g : null, vi1.d, l66Var));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
