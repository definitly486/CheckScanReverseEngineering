package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ld1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        nd1 nd1Var = (nd1) xq3Var;
        return new gd1((String) qq3.a(nd1Var.a, jSONObject, TtmlNode.ATTR_ID), (JSONObject) qq3.a(ys4Var, nd1Var.b, jSONObject, TJAdUnitConstants.String.BEACON_PARAMS));
    }
}
