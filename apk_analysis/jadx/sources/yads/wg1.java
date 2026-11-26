package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wg1 implements ln0 {
    public final tq3 a;

    public wg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final og1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", zg1.l, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", zg1.m, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = zg1.s;
        xr2 xr2Var = zg1.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_count", s36Var, nl3Var2, zg1.t, (as2) null);
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, zg1.u, (as2) null);
        m36 m36Var = zg1.n;
        nl3 nl3Var3 = hg1.d;
        xr2 xr2Var2 = zg1.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "cross_content_alignment", m36Var, nl3Var3, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA6 == null ? xr2Var2 : as2VarA6;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "cross_spacing", s36Var, nl3Var2, zg1.v, (as2) null);
        l66 l66Var3 = zg1.w;
        xr2 xr2Var3 = zg1.c;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "default_item", s36Var, nl3Var2, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA8 == null ? xr2Var3 : as2VarA8;
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = zg1.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        j71 j71Var = (j71) wq3.c(ys4Var, jSONObject, "item_builder", this.a.d2);
        l66 l66Var4 = zg1.x;
        xr2 xr2Var4 = zg1.e;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "item_spacing", s36Var, nl3Var2, l66Var4, xr2Var4);
        as2 as2Var4 = as2VarA9 == null ? xr2Var4 : as2VarA9;
        List listD6 = wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.s9);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        m36 m36Var2 = zg1.o;
        nl3 nl3Var4 = jg1.d;
        xr2 xr2Var5 = zg1.f;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var2, nl3Var4, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA10 == null ? xr2Var5 : as2VarA10;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        o36 o36Var = w36.a;
        nl3 nl3Var5 = bt4.c;
        xr2 xr2Var6 = zg1.g;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "restrict_parent_scroll", o36Var, nl3Var5, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA11 == null ? xr2Var6 : as2VarA11;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, zg1.y, (as2) null);
        m36 m36Var3 = zg1.p;
        nl3 nl3Var6 = lg1.d;
        xr2 xr2Var7 = zg1.h;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "scroll_mode", m36Var3, nl3Var6, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA13 == null ? xr2Var7 : as2VarA13;
        m36 m36Var4 = zg1.q;
        nl3 nl3Var7 = ng1.d;
        xr2 xr2Var8 = zg1.i;
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "scrollbar", m36Var4, nl3Var7, l66Var2, xr2Var8);
        as2 as2Var8 = as2VarA14 == null ? xr2Var8 : as2VarA14;
        List listD7 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        List listD8 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, zg1.z, l66Var2);
        List listD9 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD10 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var5 = zg1.r;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var9 = zg1.j;
        as2 as2VarA15 = oq3.a(ys4Var, jSONObject, "visibility", m36Var5, nl3Var8, l66Var2, as2Var9);
        if (as2VarA15 != null) {
            as2Var9 = as2VarA15;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD11 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = zg1.k;
        }
        return new og1(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, as2VarA5, as2Var2, as2VarA7, as2Var3, listD3, listD4, hf1Var, listD5, x02Var2, str, j71Var, as2Var4, listD6, to1Var, yc1Var, as2Var5, yc1Var2, as2Var6, as2VarB, as2VarA12, as2Var7, as2Var8, listD7, listD8, bd2Var, j61Var, s21Var, s21Var2, listA, listD9, listD10, as2Var9, si2Var, listD11, x02Var3);
    }
}
