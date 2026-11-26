package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sg2 implements ln0 {
    public final tq3 a;

    public sg2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ng2 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", vg2.j, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", vg2.k, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = vg2.n;
        xr2 xr2Var = vg2.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        b31 b31Var = (b31) wq3.c(ys4Var, jSONObject, "aspect", this.a.C1);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = vg2.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "autostart", o36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        List listD3 = wq3.d(ys4Var, jSONObject, "buffering_actions", this.a.k1);
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var3, vg2.o, (as2) null);
        List listD4 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        String str = (String) wq3.a(ys4Var, jSONObject, "elapsed_time_variable");
        List listD5 = wq3.d(ys4Var, jSONObject, "end_actions", this.a.k1);
        List listD6 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        List listD7 = wq3.d(ys4Var, jSONObject, "fatal_actions", this.a.k1);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD8 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = vg2.c;
        }
        x02 x02Var2 = x02Var;
        String str2 = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        xr2 xr2Var3 = vg2.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "muted", o36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        List listD9 = wq3.d(ys4Var, jSONObject, "pause_actions", this.a.k1);
        JSONObject jSONObject2 = (JSONObject) wq3.a(ys4Var, jSONObject, "player_settings_payload");
        xr2 xr2Var4 = vg2.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "preload_required", o36Var, nl3Var2, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "preview", u36Var);
        xr2 xr2Var5 = vg2.f;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "repeatable", o36Var, nl3Var2, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA8 == null ? xr2Var5 : as2VarA8;
        List listD10 = wq3.d(ys4Var, jSONObject, "resume_actions", this.a.k1);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var3, vg2.p, (as2) null);
        m36 m36Var = vg2.l;
        nl3 nl3Var4 = yg2.d;
        xr2 xr2Var6 = vg2.g;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "scale", m36Var, nl3Var4, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA10 == null ? xr2Var6 : as2VarA10;
        List listD11 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        List listD12 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, vg2.q, l66Var2);
        List listD13 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD14 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        List listA2 = wq3.a(ys4Var, jSONObject, "video_sources", this.a.d9, vg2.r);
        m36 m36Var2 = vg2.m;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var7 = vg2.h;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "visibility", m36Var2, nl3Var5, l66Var2, as2Var7);
        if (as2VarA11 != null) {
            as2Var7 = as2VarA11;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD15 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = vg2.i;
        }
        return new ng2(mr0Var, as2VarA, as2VarA2, as2Var, listD, b31Var, as2Var2, listD2, f51Var, listD3, as2VarA5, listD4, str, listD5, listD6, listD7, hf1Var, listD8, x02Var2, str2, to1Var, yc1Var, as2Var3, yc1Var2, listD9, jSONObject2, as2Var4, as2VarB, as2Var5, listD10, as2VarB2, as2VarA9, as2Var6, listD11, listD12, bd2Var, j61Var, s21Var, s21Var2, listA, listD13, listD14, listA2, as2Var7, si2Var, listD15, x02Var3);
    }
}
