package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jd1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new gd1((String) wq3.a(TtmlNode.ATTR_ID, jSONObject), (JSONObject) wq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.BEACON_PARAMS));
    }
}
