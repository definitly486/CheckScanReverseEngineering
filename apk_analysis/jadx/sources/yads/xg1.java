package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xg1 implements kv5 {
    public final tq3 a;

    public xg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final bh1 a(ys4 ys4Var, bh1 bh1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, bh1Var != null ? bh1Var.a : null, this.a.I);
        m36 m36Var = zg1.l;
        zw2 zw2Var = bh1Var != null ? bh1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", zg1.m, zD, bh1Var != null ? bh1Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, bh1Var != null ? bh1Var.d : null, bt4.d, zg1.s);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, bh1Var != null ? bh1Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, bh1Var != null ? bh1Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, bh1Var != null ? bh1Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = bh1Var != null ? bh1Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_count", s36Var, zD, zw2Var2, nl3Var2, zg1.t);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, bh1Var != null ? bh1Var.i : null, nl3Var2, zg1.u);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "cross_content_alignment", zg1.n, zD, bh1Var != null ? bh1Var.j : null, hg1.d, l66Var);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "cross_spacing", s36Var, zD, bh1Var != null ? bh1Var.k : null, nl3Var2, zg1.v);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "default_item", s36Var, zD, bh1Var != null ? bh1Var.l : null, nl3Var2, zg1.w);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, bh1Var != null ? bh1Var.m : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, bh1Var != null ? bh1Var.n : null, this.a.b3);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "focus", zD, bh1Var != null ? bh1Var.o : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, bh1Var != null ? bh1Var.p : null, this.a.I3);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, bh1Var != null ? bh1Var.q : null, this.a.U6);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, bh1Var != null ? bh1Var.r : null);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "item_builder", zD, bh1Var != null ? bh1Var.s : null, this.a.e2);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "item_spacing", s36Var, zD, bh1Var != null ? bh1Var.t : null, nl3Var2, zg1.x);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, bh1Var != null ? bh1Var.u : null, this.a.t9);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, bh1Var != null ? bh1Var.v : null, this.a.K4);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "margins", zD, bh1Var != null ? bh1Var.w : null, this.a.Y2);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.ORIENTATION, zg1.o, zD, bh1Var != null ? bh1Var.x : null, jg1.d, l66Var);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "paddings", zD, bh1Var != null ? bh1Var.y : null, this.a.Y2);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "restrict_parent_scroll", w36.a, zD, bh1Var != null ? bh1Var.z : null, bt4.c, l66Var);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, bh1Var != null ? bh1Var.A : null);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, bh1Var != null ? bh1Var.B : null, nl3Var2, zg1.y);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "scroll_mode", zg1.p, zD, bh1Var != null ? bh1Var.C : null, lg1.d, l66Var);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "scrollbar", zg1.q, zD, bh1Var != null ? bh1Var.D : null, ng1.d, l66Var);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, bh1Var != null ? bh1Var.E : null, this.a.l1);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, bh1Var != null ? bh1Var.F : null, this.a.P8);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transform", zD, bh1Var != null ? bh1Var.G : null, this.a.S8);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, bh1Var != null ? bh1Var.H : null, this.a.V1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, bh1Var != null ? bh1Var.I : null, this.a.A1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, bh1Var != null ? bh1Var.J : null, this.a.A1);
        zw2 zw2Var3 = bh1Var != null ? bh1Var.K : null;
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = zg1.z;
        st3Var.getClass();
        return new bh1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarB7, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarC3, zw2VarC4, zw2VarB11, zw2VarC5, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarC6, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarC7, zw2VarC8, zw2VarB25, zw2VarB26, zw2VarB27, zw2VarB28, pq3.a(tr4VarB, jSONObject, zD, zw2Var3, nl3Var3, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, bh1Var != null ? bh1Var.L : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, bh1Var != null ? bh1Var.M : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", zg1.r, zD, bh1Var != null ? bh1Var.N : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, bh1Var != null ? bh1Var.O : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, bh1Var != null ? bh1Var.P : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, bh1Var != null ? bh1Var.Q : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
