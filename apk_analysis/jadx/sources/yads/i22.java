package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i22 implements ln0 {
    public final tq3 a;

    public i22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new v12(oq3.a(ys4Var, jSONObject, TtmlNode.END, s36Var, nl3Var), (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2), oq3.a(ys4Var, jSONObject, TtmlNode.START, s36Var, nl3Var), (tc1) wq3.c(ys4Var, jSONObject, "track_active_style", this.a.U2), (tc1) wq3.c(ys4Var, jSONObject, "track_inactive_style", this.a.U2));
    }
}
