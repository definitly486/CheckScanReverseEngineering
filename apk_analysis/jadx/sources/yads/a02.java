package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a02 implements qv5 {
    public final tq3 a;

    public a02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        c02 c02Var = (c02) xq3Var;
        zw2 zw2Var = c02Var.a;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = b02.d;
        as2 as2Var = b02.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = c02Var.b;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var2 = b02.e;
        xr2 xr2Var = b02.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "blur", s36Var, nl3Var2, l66Var2, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = c02Var.c;
        p36 p36Var = w36.f;
        nl3 nl3Var3 = bt4.a;
        xr2 xr2Var2 = b02.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "color", p36Var, nl3Var3, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        zw2 zw2Var4 = c02Var.d;
        tq3 tq3Var = this.a;
        return new xz1(as2Var, as2VarA2, as2VarA3, (nv1) qq3.a(ys4Var, zw2Var4, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, tq3Var.T5, tq3Var.R5));
    }
}
