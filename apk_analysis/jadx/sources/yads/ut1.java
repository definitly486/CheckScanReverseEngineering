package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ut1 implements qv5 {
    public final tq3 a;

    public ut1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        au1 au1Var = (au1) xq3Var;
        String str = (String) qq3.a(au1Var.a, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var = au1Var.b;
        tq3 tq3Var = this.a;
        return new nt1(str, qq3.c(ys4Var, zw2Var, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var.u9, tq3Var.s9));
    }
}
