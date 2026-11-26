package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kb2 implements kv5 {
    public final tq3 a;

    public kb2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new nb2(pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, null, nl3Var, mb2.b), pq3.c(tr4VarB, jSONObject, "end_actions", zD, null, this.a.l1), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, null), pq3.c(tr4VarB, jSONObject, "tick_actions", zD, null, this.a.l1), pq3.b(tr4VarB, jSONObject, "tick_interval", s36Var, zD, null, nl3Var, mb2.c), pq3.b(tr4VarB, jSONObject, "value_variable", zD, null));
    }
}
