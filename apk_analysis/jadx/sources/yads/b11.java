package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b11 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        d11 d11Var = (d11) xq3Var;
        return new y01(qq3.a(ys4Var, d11Var.a, jSONObject, "action", c11.a, x01.d), qq3.a(ys4Var, d11Var.b, jSONObject, TtmlNode.ATTR_ID, w36.c));
    }
}
