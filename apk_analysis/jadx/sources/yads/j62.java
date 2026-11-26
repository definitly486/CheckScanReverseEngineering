package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j62 implements kv5 {
    public final tq3 a;

    public j62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final y62 a(ys4 ys4Var, y62 y62Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, y62Var != null ? y62Var.a : null, this.a.I);
        m36 m36Var = l62.m;
        zw2 zw2Var = y62Var != null ? y62Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", l62.n, zD, y62Var != null ? y62Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, y62Var != null ? y62Var.d : null, bt4.d, l62.p);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, y62Var != null ? y62Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, y62Var != null ? y62Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, y62Var != null ? y62Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = y62Var != null ? y62Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, l62.q);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, y62Var != null ? y62Var.i : null, this.a.P2);
        o36 o36Var = w36.a;
        zw2 zw2Var3 = y62Var != null ? y62Var.j : null;
        nl3 nl3Var3 = bt4.c;
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "dynamic_height", o36Var, zD, zw2Var3, nl3Var3, l66Var);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, y62Var != null ? y62Var.k : null, this.a.b3);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "focus", zD, y62Var != null ? y62Var.l : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, y62Var != null ? y62Var.m : null, this.a.I3);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "has_separator", o36Var, zD, y62Var != null ? y62Var.n : null, nl3Var3, l66Var);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, y62Var != null ? y62Var.o : null, this.a.U6);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, y62Var != null ? y62Var.p : null);
        zw2 zw2Var4 = y62Var != null ? y62Var.q : null;
        defpackage.cl4 cl4Var = this.a.T7;
        st3 st3Var = l62.r;
        st3Var.getClass();
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, zw2Var4, cl4Var, st3Var);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, y62Var != null ? y62Var.r : null, this.a.K4);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "margins", zD, y62Var != null ? y62Var.s : null, this.a.Y2);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "paddings", zD, y62Var != null ? y62Var.t : null, this.a.Y2);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "restrict_parent_scroll", o36Var, zD, y62Var != null ? y62Var.u : null, nl3Var3, l66Var);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, y62Var != null ? y62Var.v : null);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, y62Var != null ? y62Var.w : null, nl3Var2, l62.s);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, y62Var != null ? y62Var.x : null, this.a.l1);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "selected_tab", s36Var, zD, y62Var != null ? y62Var.y : null, nl3Var2, l62.t);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "separator_color", w36.f, zD, y62Var != null ? y62Var.z : null, bt4.a, l66Var);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "separator_paddings", zD, y62Var != null ? y62Var.A : null, this.a.Y2);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "switch_tabs_by_content_swipe_enabled", o36Var, zD, y62Var != null ? y62Var.B : null, nl3Var3, l66Var);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "tab_title_delimiter", zD, y62Var != null ? y62Var.C : null, this.a.Q7);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "tab_title_style", zD, y62Var != null ? y62Var.D : null, this.a.N7);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "title_paddings", zD, y62Var != null ? y62Var.E : null, this.a.Y2);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, y62Var != null ? y62Var.F : null, this.a.P8);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transform", zD, y62Var != null ? y62Var.G : null, this.a.S8);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, y62Var != null ? y62Var.H : null, this.a.V1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, y62Var != null ? y62Var.I : null, this.a.A1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, y62Var != null ? y62Var.J : null, this.a.A1);
        zw2 zw2Var5 = y62Var != null ? y62Var.K : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var2 = l62.u;
        st3Var2.getClass();
        return new y62(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarC3, zw2VarB7, zw2VarC4, zw2VarB8, zw2VarC5, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarA, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarB17, zw2VarC6, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarC7, zw2VarB25, zw2VarB26, zw2VarB27, zw2VarB28, pq3.a(tr4VarB, jSONObject, zD, zw2Var5, nl3Var4, st3Var2), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, y62Var != null ? y62Var.L : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, y62Var != null ? y62Var.M : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", l62.o, zD, y62Var != null ? y62Var.N : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, y62Var != null ? y62Var.O : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, y62Var != null ? y62Var.P : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, y62Var != null ? y62Var.Q : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
