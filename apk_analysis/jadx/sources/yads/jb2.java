package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jb2 implements ln0 {
    public final tq3 a;

    public jb2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = mb2.b;
        xr2 xr2Var = mb2.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        return new gb2(as2VarA, wq3.d(ys4Var, jSONObject, "end_actions", this.a.k1), (String) wq3.a(TtmlNode.ATTR_ID, jSONObject), wq3.d(ys4Var, jSONObject, "tick_actions", this.a.k1), oq3.a(ys4Var, jSONObject, "tick_interval", s36Var, nl3Var, mb2.c, (as2) null), (String) wq3.a(ys4Var, jSONObject, "value_variable"));
    }
}
