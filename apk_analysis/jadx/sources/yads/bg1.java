package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bg1 implements ln0 {
    public final tq3 a;

    public bg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new vf1(wq3.b(ys4Var, jSONObject, TJAdUnitConstants.String.ARGUMENTS, this.a.E3), (String) wq3.a(TtmlNode.TAG_BODY, jSONObject), (String) wq3.a(jSONObject, "name", uq3.b, eg1.a), (fd1) wq3.a(jSONObject, "return_type", fd1.d, uq3.a));
    }
}
