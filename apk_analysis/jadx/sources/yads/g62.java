package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g62 implements kv5 {
    public final tq3 a;

    public g62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new v62(pq3.a(tr4VarB, jSONObject, TtmlNode.TAG_DIV, zD, (zw2) null, this.a.t9), pq3.a(tr4VarB, jSONObject, TJAdUnitConstants.String.TITLE, w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "title_click_action", zD, (zw2) null, this.a.l1));
    }
}
