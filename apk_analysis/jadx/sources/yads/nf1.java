package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nf1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u36 u36Var = w36.c;
        return new gf1(oq3.b(ys4Var, jSONObject, "down", u36Var), oq3.b(ys4Var, jSONObject, "forward", u36Var), oq3.b(ys4Var, jSONObject, TtmlNode.LEFT, u36Var), oq3.b(ys4Var, jSONObject, TtmlNode.RIGHT, u36Var), oq3.b(ys4Var, jSONObject, "up", u36Var));
    }
}
