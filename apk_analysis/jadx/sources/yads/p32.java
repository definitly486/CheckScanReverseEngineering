package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p32 implements ln0 {
    public final tq3 a;

    public p32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new y22((k11) wq3.c(ys4Var, jSONObject, "animation_in", this.a.q1), (k11) wq3.c(ys4Var, jSONObject, "animation_out", this.a.q1), (br0) wq3.c(ys4Var, jSONObject, TtmlNode.TAG_DIV, this.a.s9), (String) wq3.a("state_id", jSONObject), wq3.d(ys4Var, jSONObject, "swipe_out_actions", this.a.k1));
    }
}
