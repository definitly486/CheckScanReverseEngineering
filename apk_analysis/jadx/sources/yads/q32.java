package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q32 implements kv5 {
    public final tq3 a;

    public q32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new s32(pq3.b(tr4VarB, jSONObject, "animation_in", zD, (zw2) null, this.a.r1), pq3.b(tr4VarB, jSONObject, "animation_out", zD, (zw2) null, this.a.r1), pq3.b(tr4VarB, jSONObject, TtmlNode.TAG_DIV, zD, (zw2) null, this.a.t9), pq3.a(tr4VarB, jSONObject, "state_id", zD, null), pq3.c(tr4VarB, jSONObject, "swipe_out_actions", zD, null, this.a.l1));
    }
}
