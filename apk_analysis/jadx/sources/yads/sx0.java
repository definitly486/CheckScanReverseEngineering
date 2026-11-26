package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sx0 implements kv5 {
    public static vx0 a(ys4 ys4Var, vx0 vx0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new vx0(pq3.a(tr4VarB, jSONObject, "action", ux0.a, zD, vx0Var != null ? vx0Var.a : null, px0.d, uq3.a), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, vx0Var != null ? vx0Var.b : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
