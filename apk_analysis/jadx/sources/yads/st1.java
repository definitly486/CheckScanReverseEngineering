package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class st1 implements ln0 {
    public final tq3 a;

    public st1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new nt1((String) wq3.a(TtmlNode.ATTR_ID, jSONObject), wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.s9));
    }
}
