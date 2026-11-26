package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sw0 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        tw0 tw0Var = (tw0) xq3Var;
        return new pw0(qq3.a(ys4Var, tw0Var.a, jSONObject, TtmlNode.ATTR_ID, w36.c), qq3.b(ys4Var, tw0Var.b, jSONObject, "multiple", w36.a, bt4.c));
    }
}
