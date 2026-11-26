package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rx0 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        m36 m36Var = ux0.a;
        nl3 nl3Var = px0.d;
        y50 y50Var = oq3.a;
        return new qx0(oq3.a(ys4Var, jSONObject, "action", m36Var, nl3Var, uq3.a), oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c));
    }
}
