package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q12 implements ln0 {
    public final tq3 a;

    public q12(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final p12 a(ys4 ys4Var, JSONObject jSONObject) {
        ac1 ac1Var = (ac1) wq3.c(ys4Var, jSONObject, "distance", this.a.L2);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = t12.g;
        xr2 xr2Var = t12.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        m36 m36Var = t12.e;
        nl3 nl3Var2 = o12.d;
        xr2 xr2Var2 = t12.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "edge", m36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var = as2VarA2 == null ? xr2Var2 : as2VarA2;
        m36 m36Var2 = t12.f;
        nl3 nl3Var3 = o11.d;
        xr2 xr2Var3 = t12.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var2, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var2 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        l66 l66Var3 = t12.h;
        xr2 xr2Var4 = t12.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var, l66Var3, xr2Var4);
        return new p12(ac1Var, as2VarA, as2Var, as2Var2, as2VarA4 == null ? xr2Var4 : as2VarA4);
    }
}
