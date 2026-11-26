package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y51 implements qv5 {
    public static v51 a(ys4 ys4Var, a61 a61Var, JSONObject jSONObject) {
        zw2 zw2Var = a61Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = z51.e;
        xr2 xr2Var = z51.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var2 = a61Var.b;
        m36 m36Var = z51.d;
        nl3 nl3Var2 = o11.d;
        xr2 xr2Var2 = z51.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "interpolator", m36Var, nl3Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        zw2 zw2Var3 = a61Var.c;
        l66 l66Var2 = z51.f;
        as2 as2Var = z51.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "start_delay", s36Var, nl3Var, l66Var2, as2Var);
        if (as2VarA3 != null) {
            as2Var = as2VarA3;
        }
        return new v51(as2VarA, as2VarA2, as2Var);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (a61) xq3Var, jSONObject);
    }
}
