package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pd1 implements ln0 {
    public static od1 b(ys4 ys4Var, JSONObject jSONObject) {
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = sd1.f;
        as2 as2Var = sd1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var2 = sd1.g;
        xr2 xr2Var = sd1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, l66Var2, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        m36 m36Var = sd1.e;
        nl3 nl3Var3 = o11.d;
        xr2 xr2Var2 = sd1.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var3, uq3.a, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        l66 l66Var3 = sd1.h;
        as2 as2Var2 = sd1.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var2, l66Var3, as2Var2);
        if (as2VarA4 != null) {
            as2Var2 = as2VarA4;
        }
        return new od1(as2Var, as2VarA2, as2VarA3, as2Var2);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
