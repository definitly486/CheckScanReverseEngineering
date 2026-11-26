package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p22 implements kv5 {
    public final tq3 a;

    public p22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "font_family", w36.c, zD, (zw2) null);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, null, nl3Var, r22.g);
        m36 m36Var = r22.e;
        nl3 nl3Var2 = g12.d;
        l66 l66Var = uq3.a;
        return new m22(zw2VarB, zw2VarB2, pq3.b(tr4VarB, jSONObject, "font_size_unit", m36Var, zD, null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, r22.f, zD, null, tf1.d, l66Var), pq3.b(tr4VarB, jSONObject, "font_weight_value", s36Var, zD, null, nl3Var, r22.h), pq3.b(tr4VarB, jSONObject, "letter_spacing", w36.d, zD, null, bt4.d, l66Var), pq3.b(tr4VarB, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zD, (zw2) null, this.a.S5), pq3.b(tr4VarB, jSONObject, "text_color", w36.f, zD, null, bt4.a, l66Var));
    }
}
