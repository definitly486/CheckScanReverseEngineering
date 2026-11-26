package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wv0 implements qv5 {
    public final tq3 a;

    public wv0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        yv0 yv0Var = (yv0) xq3Var;
        zw2 zw2Var = yv0Var.a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = xv0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "animated", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = yv0Var.b;
        tq3 tq3Var = this.a;
        return new tv0(as2Var, (kv0) qq3.a(ys4Var, zw2Var2, jSONObject, FirebaseAnalytics.Param.DESTINATION, tq3Var.z0, tq3Var.x0), qq3.a(ys4Var, yv0Var.c, jSONObject, TtmlNode.ATTR_ID, w36.c));
    }
}
