package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o71 implements ln0 {
    public final tq3 a;

    public o71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        br0 br0Var = (br0) wq3.a(ys4Var, jSONObject, TtmlNode.TAG_DIV, this.a.s9);
        as2 as2VarB = oq3.b(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = r71.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "selector", o36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new i71(br0Var, as2VarB, as2Var);
    }
}
