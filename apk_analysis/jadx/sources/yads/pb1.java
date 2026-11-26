package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pb1 implements qv5 {
    public final tq3 a;

    public pb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        sb1 sb1Var = (sb1) xq3Var;
        zw2 zw2Var = sb1Var.a;
        tq3 tq3Var = this.a;
        return new cb1((br0) qq3.a(ys4Var, zw2Var, jSONObject, TtmlNode.TAG_DIV, tq3Var.u9, tq3Var.s9), ((Number) qq3.a(sb1Var.b, jSONObject, "state_id", bt4.e, uq3.a)).longValue());
    }
}
