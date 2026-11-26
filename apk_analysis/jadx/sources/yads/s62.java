package yads;

import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class s62 implements kv5 {
    public final tq3 a;

    public s62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "active_background_color", p36Var, zD, null, nl3Var, l66Var);
        q36 q36Var = w36.h;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "active_font_variation_settings", q36Var, zD, (zw2) null);
        m36 m36Var = u62.l;
        nl3 nl3Var2 = tf1.d;
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "active_font_weight", m36Var, zD, null, nl3Var2, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "active_text_color", p36Var, zD, null, nl3Var, l66Var);
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        return new x62(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, pq3.b(tr4VarB, jSONObject, "animation_duration", s36Var, zD, null, nl3Var3, u62.q), pq3.b(tr4VarB, jSONObject, "animation_type", u62.m, zD, null, w52.d, l66Var), pq3.b(tr4VarB, jSONObject, "corner_radius", s36Var, zD, null, nl3Var3, u62.r), pq3.b(tr4VarB, jSONObject, "corners_radius", zD, (zw2) null, this.a.t2), pq3.b(tr4VarB, jSONObject, "font_family", w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, null, nl3Var3, u62.s), pq3.b(tr4VarB, jSONObject, "font_size_unit", u62.n, zD, null, g12.d, l66Var), pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, u62.o, zD, null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "inactive_background_color", p36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "inactive_font_variation_settings", q36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "inactive_font_weight", u62.p, zD, null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "inactive_text_color", p36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "item_spacing", s36Var, zD, null, nl3Var3, u62.t), pq3.b(tr4VarB, jSONObject, "letter_spacing", w36.d, zD, null, bt4.d, l66Var), pq3.b(tr4VarB, jSONObject, "line_height", s36Var, zD, null, nl3Var3, u62.u), pq3.b(tr4VarB, jSONObject, "paddings", zD, (zw2) null, this.a.Y2));
    }
}
