package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zr0 implements ln0 {
    public final tq3 a;

    public zr0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final yr0 a(ys4 ys4Var, JSONObject jSONObject) {
        String str = (String) wq3.a("animator_id", jSONObject);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "direction", cs0.a, m11.d);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new yr0(str, as2VarA, oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, cs0.c, (as2) null), (oe2) wq3.c(ys4Var, jSONObject, "end_value", this.a.X8), oq3.a(ys4Var, jSONObject, "interpolator", cs0.b, o11.d), (x91) wq3.c(ys4Var, jSONObject, "repeat_count", this.a.v2), oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var, cs0.d, (as2) null), (oe2) wq3.c(ys4Var, jSONObject, "start_value", this.a.X8));
    }
}
