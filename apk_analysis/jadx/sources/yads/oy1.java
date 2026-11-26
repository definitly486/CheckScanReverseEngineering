package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class oy1 implements ln0 {
    public static ny1 b(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = ry1.h;
        xr2 xr2Var = ry1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        m36 m36Var = ry1.g;
        nl3 nl3Var2 = o11.d;
        xr2 xr2Var2 = ry1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var2, uq3.a, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var2 = ry1.i;
        xr2 xr2Var3 = ry1.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "pivot_x", r36Var, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        l66 l66Var3 = ry1.j;
        xr2 xr2Var4 = ry1.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "pivot_y", r36Var, nl3Var3, l66Var3, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        l66 l66Var4 = ry1.k;
        as2 as2Var5 = ry1.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "scale", r36Var, nl3Var3, l66Var4, as2Var5);
        if (as2VarA5 != null) {
            as2Var5 = as2VarA5;
        }
        l66 l66Var5 = ry1.l;
        xr2 xr2Var5 = ry1.f;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var, l66Var5, xr2Var5);
        return new ny1(as2Var, as2Var2, as2Var3, as2Var4, as2Var5, as2VarA6 == null ? xr2Var5 : as2VarA6);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
