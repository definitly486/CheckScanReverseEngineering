package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q22 implements qv5 {
    public final tq3 a;

    public q22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        m22 m22Var = (m22) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, m22Var.a, jSONObject, "font_family", w36.c);
        zw2 zw2Var = m22Var.b;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = r22.g;
        as2 as2Var = r22.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "font_size", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = m22Var.c;
        m36 m36Var = r22.e;
        nl3 nl3Var2 = g12.d;
        xr2 xr2Var = r22.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "font_size_unit", m36Var, nl3Var2, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        as2 as2VarB2 = qq3.b(ys4Var, m22Var.d, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarB3 = qq3.b(ys4Var, m22Var.e, jSONObject, FontsContractCompat.Columns.WEIGHT, r22.f, tf1.d);
        as2 as2VarB4 = qq3.b(ys4Var, m22Var.f, jSONObject, "font_weight_value", s36Var, nl3Var, r22.h);
        zw2 zw2Var3 = m22Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        xr2 xr2Var2 = r22.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "letter_spacing", r36Var, nl3Var3, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var4 = m22Var.h;
        tq3 tq3Var = this.a;
        nv1 nv1Var = (nv1) qq3.b(ys4Var, zw2Var4, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, tq3Var.T5, tq3Var.R5);
        zw2 zw2Var5 = m22Var.i;
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var3 = r22.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var5, jSONObject, "text_color", p36Var, nl3Var4, xr2Var3);
        return new w12(as2VarB, as2Var, as2Var2, as2VarB2, as2VarB3, as2VarB4, as2Var3, nv1Var, as2VarA4 == null ? xr2Var3 : as2VarA4);
    }
}
