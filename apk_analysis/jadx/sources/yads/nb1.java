package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nb1 implements ln0 {
    public final tq3 a;

    public nb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new cb1((br0) wq3.a(ys4Var, jSONObject, TtmlNode.TAG_DIV, this.a.s9), ((Number) wq3.a(jSONObject, "state_id", bt4.e, uq3.a)).longValue());
    }
}
