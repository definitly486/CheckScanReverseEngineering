package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class v92 implements kv5 {
    public final tq3 a;

    public v92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, null, this.a.l1);
        m36 m36Var = x92.d;
        nl3 nl3Var = d82.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var, zD, null, nl3Var, l66Var);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "background", zD, (zw2) null, this.a.Z7);
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "baseline_offset", r36Var, zD, null, nl3Var2, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "border", zD, (zw2) null, this.a.c8);
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, TtmlNode.END, s36Var, zD, null, nl3Var3, x92.i);
        u36 u36Var = w36.c;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "font_family", u36Var, zD, (zw2) null);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "font_feature_settings", u36Var, zD, (zw2) null);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, null, nl3Var3, x92.j);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "font_size_unit", x92.e, zD, null, g12.d, l66Var);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h, zD, (zw2) null);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, x92.f, zD, null, tf1.d, l66Var);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "font_weight_value", s36Var, zD, null, nl3Var3, x92.k);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "letter_spacing", r36Var, zD, null, nl3Var2, l66Var);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "line_height", s36Var, zD, null, nl3Var3, x92.l);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "mask", zD, (zw2) null, this.a.l8);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, TtmlNode.START, s36Var, zD, null, nl3Var3, x92.m);
        m36 m36Var2 = x92.g;
        nl3 nl3Var4 = bp1.d;
        return new eb2(zw2VarC, zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarB7, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, pq3.b(tr4VarB, jSONObject, "strike", m36Var2, zD, null, nl3Var4, l66Var), pq3.b(tr4VarB, jSONObject, "text_color", w36.f, zD, null, bt4.a, l66Var), pq3.b(tr4VarB, jSONObject, "text_shadow", zD, (zw2) null, this.a.I6), pq3.b(tr4VarB, jSONObject, "top_offset", s36Var, zD, null, nl3Var3, x92.n), pq3.b(tr4VarB, jSONObject, TtmlNode.UNDERLINE, x92.h, zD, null, nl3Var4, l66Var));
    }
}
