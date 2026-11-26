package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class s12 implements qv5 {
    public final tq3 a;

    public s12(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final p12 a(ys4 ys4Var, u12 u12Var, JSONObject jSONObject) {
        zw2 zw2Var = u12Var.a;
        tq3 tq3Var = this.a;
        ac1 ac1Var = (ac1) qq3.b(ys4Var, zw2Var, jSONObject, "distance", tq3Var.N2, tq3Var.L2);
        zw2 zw2Var2 = u12Var.b;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = t12.g;
        xr2 xr2Var = t12.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var3 = u12Var.c;
        m36 m36Var = t12.e;
        nl3 nl3Var2 = o12.d;
        xr2 xr2Var2 = t12.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "edge", m36Var, nl3Var2, xr2Var2);
        as2 as2Var = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var4 = u12Var.d;
        m36 m36Var2 = t12.f;
        nl3 nl3Var3 = o11.d;
        xr2 xr2Var3 = t12.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var4, jSONObject, "interpolator", m36Var2, nl3Var3, xr2Var3);
        as2 as2Var2 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var5 = u12Var.e;
        l66 l66Var2 = t12.h;
        xr2 xr2Var4 = t12.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var5, jSONObject, "start_delay", s36Var, nl3Var, l66Var2, xr2Var4);
        return new p12(ac1Var, as2VarA, as2Var, as2Var2, as2VarA4 == null ? xr2Var4 : as2VarA4);
    }
}
