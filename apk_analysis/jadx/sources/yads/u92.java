package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class u92 implements ln0 {
    public final tq3 a;

    public u92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        List listD = wq3.d(ys4Var, jSONObject, "actions", this.a.k1);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_vertical", x92.d, d82.d);
        h92 h92Var = (h92) wq3.c(ys4Var, jSONObject, "background", this.a.Y7);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        xr2 xr2Var = x92.a;
        l66 l66Var = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "baseline_offset", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA2 == null ? xr2Var : as2VarA2;
        o92 o92Var = (o92) wq3.c(ys4Var, jSONObject, "border", this.a.b8);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, TtmlNode.END, s36Var, nl3Var2, x92.i, (as2) null);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "font_family", u36Var);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "font_feature_settings", u36Var);
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var2, x92.j, (as2) null);
        m36 m36Var = x92.e;
        nl3 nl3Var3 = g12.d;
        xr2 xr2Var2 = x92.b;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var, nl3Var3, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, x92.f, tf1.d);
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "font_weight_value", s36Var, nl3Var2, x92.k, (as2) null);
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var);
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "line_height", s36Var, nl3Var2, x92.l, (as2) null);
        aa2 aa2Var = (aa2) wq3.c(ys4Var, jSONObject, "mask", this.a.k8);
        l66 l66Var2 = x92.m;
        as2 as2Var3 = x92.c;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, TtmlNode.START, s36Var, nl3Var2, l66Var2, as2Var3);
        if (as2VarA10 != null) {
            as2Var3 = as2VarA10;
        }
        m36 m36Var2 = x92.g;
        nl3 nl3Var4 = bp1.d;
        return new y72(listD, as2VarA, h92Var, as2Var, o92Var, as2VarA3, as2VarB, as2VarB2, as2VarA4, as2Var2, as2VarB3, as2VarA6, as2VarA7, as2VarA8, as2VarA9, aa2Var, as2Var3, oq3.a(ys4Var, jSONObject, "strike", m36Var2, nl3Var4), oq3.a(ys4Var, jSONObject, "text_color", w36.f, bt4.a), (xz1) wq3.c(ys4Var, jSONObject, "text_shadow", this.a.H6), oq3.a(ys4Var, jSONObject, "top_offset", s36Var, nl3Var2, x92.n, (as2) null), oq3.a(ys4Var, jSONObject, TtmlNode.UNDERLINE, x92.h, nl3Var4));
    }
}
