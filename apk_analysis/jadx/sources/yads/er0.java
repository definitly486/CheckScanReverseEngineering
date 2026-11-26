package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class er0 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new hr0(pq3.b(tr4VarB, jSONObject, "bottom", s36Var, zD, null, nl3Var, gr0.e), pq3.b(tr4VarB, jSONObject, TtmlNode.LEFT, s36Var, zD, null, nl3Var, gr0.f), pq3.b(tr4VarB, jSONObject, TtmlNode.RIGHT, s36Var, zD, null, nl3Var, gr0.g), pq3.b(tr4VarB, jSONObject, "top", s36Var, zD, null, nl3Var, gr0.h));
    }
}
