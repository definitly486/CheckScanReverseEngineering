package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qy1 implements qv5 {
    public static ny1 a(ys4 ys4Var, sy1 sy1Var, JSONObject jSONObject) {
        zw2 zw2Var = sy1Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = ry1.h;
        xr2 xr2Var = ry1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var2 = sy1Var.b;
        m36 m36Var = ry1.g;
        nl3 nl3Var2 = o11.d;
        xr2 xr2Var2 = ry1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "interpolator", m36Var, nl3Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        zw2 zw2Var3 = sy1Var.c;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var2 = ry1.i;
        xr2 xr2Var3 = ry1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "pivot_x", r36Var, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var4 = sy1Var.d;
        l66 l66Var3 = ry1.j;
        xr2 xr2Var4 = ry1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "pivot_y", r36Var, nl3Var3, l66Var3, xr2Var4);
        as2 as2Var2 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        zw2 zw2Var5 = sy1Var.e;
        l66 l66Var4 = ry1.k;
        as2 as2Var3 = ry1.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var5, jSONObject, "scale", r36Var, nl3Var3, l66Var4, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        zw2 zw2Var6 = sy1Var.f;
        l66 l66Var5 = ry1.l;
        xr2 xr2Var5 = ry1.f;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var6, jSONObject, "start_delay", s36Var, nl3Var, l66Var5, xr2Var5);
        return new ny1(as2VarA, as2VarA2, as2Var, as2Var2, as2Var3, as2VarA6 == null ? xr2Var5 : as2VarA6);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (sy1) xq3Var, jSONObject);
    }
}
