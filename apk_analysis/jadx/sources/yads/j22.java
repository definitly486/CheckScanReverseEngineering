package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j22 implements kv5 {
    public final tq3 a;

    public j22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = uq3.a;
        return new l22(pq3.b(tr4VarB, jSONObject, TtmlNode.END, s36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "margins", zD, (zw2) null, this.a.Y2), pq3.b(tr4VarB, jSONObject, TtmlNode.START, s36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "track_active_style", zD, (zw2) null, this.a.V2), pq3.b(tr4VarB, jSONObject, "track_inactive_style", zD, (zw2) null, this.a.V2));
    }
}
