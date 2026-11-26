package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ad1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new dd1(pq3.b(tr4VarB, jSONObject, "bottom", s36Var, zD, null, nl3Var, cd1.g), pq3.b(tr4VarB, jSONObject, TtmlNode.END, s36Var, zD, null, nl3Var, cd1.h), pq3.b(tr4VarB, jSONObject, TtmlNode.LEFT, s36Var, zD, null, nl3Var, cd1.i), pq3.b(tr4VarB, jSONObject, TtmlNode.RIGHT, s36Var, zD, null, nl3Var, cd1.j), pq3.b(tr4VarB, jSONObject, TtmlNode.START, s36Var, zD, null, nl3Var, cd1.k), pq3.b(tr4VarB, jSONObject, "top", s36Var, zD, null, nl3Var, cd1.l), pq3.b(tr4VarB, jSONObject, "unit", cd1.f, zD, null, g12.d, uq3.a));
    }
}
