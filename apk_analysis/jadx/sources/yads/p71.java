package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p71 implements kv5 {
    public final tq3 a;

    public p71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new s71(pq3.a(tr4VarB, jSONObject, TtmlNode.TAG_DIV, zD, (zw2) null, this.a.t9), pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "selector", w36.a, zD, null, bt4.c, uq3.a));
    }
}
