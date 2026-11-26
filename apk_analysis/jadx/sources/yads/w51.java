package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w51 implements ln0 {
    public static v51 b(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = z51.e;
        xr2 xr2Var = z51.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        m36 m36Var = z51.d;
        nl3 nl3Var2 = o11.d;
        as2 as2Var2 = z51.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var2, uq3.a, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        l66 l66Var2 = z51.f;
        as2 as2Var3 = z51.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var, l66Var2, as2Var3);
        if (as2VarA3 != null) {
            as2Var3 = as2VarA3;
        }
        return new v51(as2Var, as2Var2, as2Var3);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
