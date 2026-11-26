package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a11 implements kv5 {
    public static d11 a(ys4 ys4Var, d11 d11Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new d11(pq3.a(tr4VarB, jSONObject, "action", c11.a, zD, d11Var != null ? d11Var.a : null, x01.d, uq3.a), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, d11Var != null ? d11Var.b : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
