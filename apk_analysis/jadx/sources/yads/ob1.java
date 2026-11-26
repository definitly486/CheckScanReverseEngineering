package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ob1 implements kv5 {
    public final tq3 a;

    public ob1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new sb1(pq3.a(tr4VarB, jSONObject, TtmlNode.TAG_DIV, zD, (zw2) null, this.a.t9), pq3.a(tr4VarB, jSONObject, "state_id", zD, (zw2) null, bt4.e, uq3.a));
    }
}
