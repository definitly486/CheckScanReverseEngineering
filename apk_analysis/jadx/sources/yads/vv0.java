package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vv0 implements kv5 {
    public final tq3 a;

    public vv0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final yv0 a(ys4 ys4Var, yv0 yv0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new yv0(pq3.b(tr4VarB, jSONObject, "animated", w36.a, zD, yv0Var != null ? yv0Var.a : null, bt4.c, uq3.a), pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.DESTINATION, zD, yv0Var != null ? yv0Var.b : null, this.a.y0), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, yv0Var != null ? yv0Var.c : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
