package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rd1 implements qv5 {
    public static od1 a(ys4 ys4Var, td1 td1Var, JSONObject jSONObject) {
        zw2 zw2Var = td1Var.a;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = sd1.f;
        as2 as2Var = sd1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = td1Var.b;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var2 = sd1.g;
        xr2 xr2Var = sd1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, l66Var2, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = td1Var.c;
        m36 m36Var = sd1.e;
        nl3 nl3Var3 = o11.d;
        xr2 xr2Var2 = sd1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "interpolator", m36Var, nl3Var3, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        zw2 zw2Var4 = td1Var.d;
        l66 l66Var3 = sd1.h;
        xr2 xr2Var3 = sd1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "start_delay", s36Var, nl3Var2, l66Var3, xr2Var3);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var3;
        }
        return new od1(as2Var, as2VarA2, as2VarA3, as2VarA4);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (td1) xq3Var, jSONObject);
    }
}
