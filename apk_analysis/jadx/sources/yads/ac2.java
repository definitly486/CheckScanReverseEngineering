package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ac2 implements kv5 {
    public final tq3 a;

    public ac2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "animation_in", zD, (zw2) null, this.a.r1);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "animation_out", zD, (zw2) null, this.a.r1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "background_accessibility_description", w36.c, zD, (zw2) null);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        return new yc2(zw2VarB, zw2VarB2, zw2VarB3, pq3.b(tr4VarB, jSONObject, "close_by_tap_outside", o36Var, zD, null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, TtmlNode.TAG_DIV, zD, (zw2) null, this.a.t9), pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, w36.b, zD, null, bt4.e, cc2.e), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, null), pq3.b(tr4VarB, jSONObject, "mode", zD, (zw2) null, this.a.M8), pq3.b(tr4VarB, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zD, (zw2) null, this.a.S5), pq3.a(tr4VarB, jSONObject, "position", cc2.d, zD, null, pb2.d, l66Var), pq3.c(tr4VarB, jSONObject, "tap_outside_actions", zD, null, this.a.l1));
    }
}
