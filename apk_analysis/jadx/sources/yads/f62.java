package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f62 implements ln0 {
    public final tq3 a;

    public f62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new t52((br0) wq3.a(ys4Var, jSONObject, TtmlNode.TAG_DIV, this.a.s9), oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.TITLE, w36.c), (xr0) wq3.c(ys4Var, jSONObject, "title_click_action", this.a.k1));
    }
}
