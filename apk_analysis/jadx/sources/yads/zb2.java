package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zb2 implements ln0 {
    public final tq3 a;

    public zb2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        k11 k11Var = (k11) wq3.c(ys4Var, jSONObject, "animation_in", this.a.q1);
        k11 k11Var2 = (k11) wq3.c(ys4Var, jSONObject, "animation_out", this.a.q1);
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "background_accessibility_description", w36.c);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = cc2.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "close_by_tap_outside", o36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        br0 br0Var = (br0) wq3.a(ys4Var, jSONObject, TtmlNode.TAG_DIV, this.a.s9);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var2 = cc2.e;
        as2 as2Var2 = cc2.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, l66Var2, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        String str = (String) wq3.a(TtmlNode.ATTR_ID, jSONObject);
        fc2 fc2Var = (fc2) wq3.c(ys4Var, jSONObject, "mode", this.a.L8);
        if (fc2Var == null) {
            fc2Var = cc2.c;
        }
        return new qb2(k11Var, k11Var2, as2VarB, as2Var, br0Var, as2Var2, str, fc2Var, (nv1) wq3.c(ys4Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.R5), oq3.a(ys4Var, jSONObject, "position", cc2.d, pb2.d, l66Var), wq3.d(ys4Var, jSONObject, "tap_outside_actions", this.a.k1));
    }
}
