package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kd1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new nd1(pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, null), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.BEACON_PARAMS, zD, null));
    }
}
