package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w92 implements qv5 {
    public final tq3 a;

    public w92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        eb2 eb2Var = (eb2) xq3Var;
        zw2 zw2Var = eb2Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "actions", tq3Var.m1, tq3Var.k1);
        as2 as2VarB = qq3.b(ys4Var, eb2Var.b, jSONObject, "alignment_vertical", x92.d, d82.d);
        zw2 zw2Var2 = eb2Var.c;
        tq3 tq3Var2 = this.a;
        h92 h92Var = (h92) qq3.b(ys4Var, zw2Var2, jSONObject, "background", tq3Var2.a8, tq3Var2.Y7);
        zw2 zw2Var3 = eb2Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        xr2 xr2Var = x92.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var3, jSONObject, "baseline_offset", r36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var4 = eb2Var.e;
        tq3 tq3Var3 = this.a;
        o92 o92Var = (o92) qq3.b(ys4Var, zw2Var4, jSONObject, "border", tq3Var3.d8, tq3Var3.b8);
        zw2 zw2Var5 = eb2Var.f;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var5, jSONObject, TtmlNode.END, s36Var, nl3Var2, x92.i);
        zw2 zw2Var6 = eb2Var.g;
        u36 u36Var = w36.c;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "font_family", u36Var);
        as2 as2VarB4 = qq3.b(ys4Var, eb2Var.h, jSONObject, "font_feature_settings", u36Var);
        as2 as2VarB5 = qq3.b(ys4Var, eb2Var.i, jSONObject, "font_size", s36Var, nl3Var2, x92.j);
        zw2 zw2Var7 = eb2Var.j;
        m36 m36Var = x92.e;
        nl3 nl3Var3 = g12.d;
        xr2 xr2Var2 = x92.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var7, jSONObject, "font_size_unit", m36Var, nl3Var3, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarB6 = qq3.b(ys4Var, eb2Var.k, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarB7 = qq3.b(ys4Var, eb2Var.l, jSONObject, FontsContractCompat.Columns.WEIGHT, x92.f, tf1.d);
        as2 as2VarB8 = qq3.b(ys4Var, eb2Var.m, jSONObject, "font_weight_value", s36Var, nl3Var2, x92.k);
        as2 as2VarB9 = qq3.b(ys4Var, eb2Var.n, jSONObject, "letter_spacing", r36Var, nl3Var);
        as2 as2VarB10 = qq3.b(ys4Var, eb2Var.o, jSONObject, "line_height", s36Var, nl3Var2, x92.l);
        zw2 zw2Var8 = eb2Var.p;
        tq3 tq3Var4 = this.a;
        aa2 aa2Var = (aa2) qq3.b(ys4Var, zw2Var8, jSONObject, "mask", tq3Var4.m8, tq3Var4.k8);
        zw2 zw2Var9 = eb2Var.q;
        l66 l66Var = x92.m;
        as2 as2Var3 = x92.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var9, jSONObject, TtmlNode.START, s36Var, nl3Var2, l66Var, as2Var3);
        if (as2VarA3 != null) {
            as2Var3 = as2VarA3;
        }
        zw2 zw2Var10 = eb2Var.r;
        m36 m36Var2 = x92.g;
        nl3 nl3Var4 = bp1.d;
        as2 as2VarB11 = qq3.b(ys4Var, zw2Var10, jSONObject, "strike", m36Var2, nl3Var4);
        as2 as2VarB12 = qq3.b(ys4Var, eb2Var.s, jSONObject, "text_color", w36.f, bt4.a);
        zw2 zw2Var11 = eb2Var.t;
        tq3 tq3Var5 = this.a;
        return new y72(listC, as2VarB, h92Var, as2Var, o92Var, as2VarB2, as2VarB3, as2VarB4, as2VarB5, as2Var2, as2VarB6, as2VarB7, as2VarB8, as2VarB9, as2VarB10, aa2Var, as2Var3, as2VarB11, as2VarB12, (xz1) qq3.b(ys4Var, zw2Var11, jSONObject, "text_shadow", tq3Var5.J6, tq3Var5.H6), qq3.b(ys4Var, eb2Var.u, jSONObject, "top_offset", s36Var, nl3Var2, x92.n), qq3.b(ys4Var, eb2Var.v, jSONObject, TtmlNode.UNDERLINE, x92.h, nl3Var4));
    }
}
