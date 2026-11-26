package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pa1 implements ln0 {
    public final tq3 a;

    public pa1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ka1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", sa1.e, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", sa1.f, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = sa1.h;
        xr2 xr2Var = sa1.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, sa1.i, (as2) null);
        JSONObject jSONObject2 = (JSONObject) wq3.a(ys4Var, jSONObject, "custom_props");
        String str = (String) wq3.a("custom_type", jSONObject);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = sa1.b;
        }
        x02 x02Var2 = x02Var;
        String str2 = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        List listD6 = wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.s9);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, sa1.j, (as2) null);
        List listD7 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        List listD8 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = sa1.k;
        l66 l66Var2 = uq3.a;
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", nl3Var3, st3Var, l66Var2);
        List listD9 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD10 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var = sa1.g;
        nl3 nl3Var4 = ri2.d;
        as2 as2Var2 = sa1.c;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "visibility", m36Var, nl3Var4, l66Var2, as2Var2);
        if (as2VarA6 != null) {
            as2Var2 = as2VarA6;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD11 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = sa1.d;
        }
        return new ka1(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, jSONObject2, str, listD3, listD4, hf1Var, listD5, x02Var2, str2, listD6, to1Var, yc1Var, yc1Var2, as2VarB, as2VarA5, listD7, listD8, bd2Var, j61Var, s21Var, s21Var2, listA, listD9, listD10, as2Var2, si2Var, listD11, x02Var3);
    }
}
