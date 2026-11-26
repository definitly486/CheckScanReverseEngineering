package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class iy1 implements kv5 {
    public final tq3 a;

    public iy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final ly1 a(ys4 ys4Var, ly1 ly1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ly1(pq3.b(tr4VarB, jSONObject, "background_color", w36.f, zD, ly1Var != null ? ly1Var.a : null, bt4.a, uq3.a), pq3.b(tr4VarB, jSONObject, "corner_radius", zD, ly1Var != null ? ly1Var.b : null, this.a.w3), pq3.b(tr4VarB, jSONObject, "item_height", zD, ly1Var != null ? ly1Var.c : null, this.a.w3), pq3.b(tr4VarB, jSONObject, "item_width", zD, ly1Var != null ? ly1Var.d : null, this.a.w3), pq3.b(tr4VarB, jSONObject, "stroke", zD, ly1Var != null ? ly1Var.e : null, this.a.E7));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
