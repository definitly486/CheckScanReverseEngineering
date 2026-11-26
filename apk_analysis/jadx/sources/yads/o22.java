package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o22 implements ln0 {
    public final tq3 a;

    public o22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2Var;
        as2 as2Var2;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "font_family", w36.c);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = r22.g;
        xr2 xr2Var = r22.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var3 = as2VarA == null ? xr2Var : as2VarA;
        m36 m36Var = r22.e;
        nl3 nl3Var2 = g12.d;
        xr2 xr2Var2 = r22.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var4 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, r22.f, tf1.d);
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "font_weight_value", s36Var, nl3Var, r22.h, (as2) null);
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        xr2 xr2Var3 = r22.c;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var5 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        nv1 nv1Var = (nv1) wq3.c(ys4Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.R5);
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var4 = r22.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "text_color", p36Var, nl3Var4, l66Var2, xr2Var4);
        if (as2VarA6 == null) {
            as2Var2 = xr2Var4;
            as2Var = as2VarA4;
        } else {
            as2Var = as2VarA4;
            as2Var2 = as2VarA6;
        }
        new w12(as2VarB, as2Var3, as2Var4, as2VarB2, as2VarA3, as2Var, as2Var5, nv1Var, as2Var2);
        return r7;
    }
}
