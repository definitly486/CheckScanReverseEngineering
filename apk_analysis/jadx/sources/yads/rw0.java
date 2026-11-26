package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rw0 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new tw0(pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "multiple", w36.a, zD, null, bt4.c, uq3.a));
    }
}
