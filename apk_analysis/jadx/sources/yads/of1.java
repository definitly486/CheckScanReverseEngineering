package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class of1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        return new qf1(pq3.b(tr4VarB, jSONObject, "down", u36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "forward", u36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, TtmlNode.LEFT, u36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, TtmlNode.RIGHT, u36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "up", u36Var, zD, (zw2) null));
    }
}
