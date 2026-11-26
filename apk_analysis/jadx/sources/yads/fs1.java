package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fs1 implements kv5 {
    public final tq3 a;

    public fs1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final at1 a(ys4 ys4Var, at1 at1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, at1Var != null ? at1Var.a : null, this.a.I);
        m36 m36Var = hs1.l;
        zw2 zw2Var = at1Var != null ? at1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", hs1.m, zD, at1Var != null ? at1Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, at1Var != null ? at1Var.d : null, bt4.d, hs1.r);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, at1Var != null ? at1Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, at1Var != null ? at1Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, at1Var != null ? at1Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = at1Var != null ? at1Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, hs1.s);
        m36 m36Var2 = hs1.n;
        zw2 zw2Var3 = at1Var != null ? at1Var.i : null;
        nl3 nl3Var3 = rr1.d;
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "cross_axis_alignment", m36Var2, zD, zw2Var3, nl3Var3, l66Var);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "default_item", s36Var, zD, at1Var != null ? at1Var.j : null, nl3Var2, hs1.t);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, at1Var != null ? at1Var.k : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, at1Var != null ? at1Var.l : null, this.a.b3);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "focus", zD, at1Var != null ? at1Var.m : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, at1Var != null ? at1Var.n : null, this.a.I3);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, at1Var != null ? at1Var.o : null, this.a.U6);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, at1Var != null ? at1Var.p : null);
        o36 o36Var = w36.a;
        zw2 zw2Var4 = at1Var != null ? at1Var.q : null;
        nl3 nl3Var4 = bt4.c;
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "infinite_scroll", o36Var, zD, zw2Var4, nl3Var4, l66Var);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "item_builder", zD, at1Var != null ? at1Var.r : null, this.a.e2);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "item_spacing", zD, at1Var != null ? at1Var.s : null, this.a.w3);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, at1Var != null ? at1Var.t : null, this.a.t9);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "layout_mode", zD, at1Var != null ? at1Var.u : null, this.a.u5);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, at1Var != null ? at1Var.v : null, this.a.K4);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "margins", zD, at1Var != null ? at1Var.w : null, this.a.Y2);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.ORIENTATION, hs1.o, zD, at1Var != null ? at1Var.x : null, tr1.d, l66Var);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "paddings", zD, at1Var != null ? at1Var.y : null, this.a.Y2);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "page_transformation", zD, at1Var != null ? at1Var.z : null, this.a.r5);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "restrict_parent_scroll", o36Var, zD, at1Var != null ? at1Var.A : null, nl3Var4, l66Var);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, at1Var != null ? at1Var.B : null);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, at1Var != null ? at1Var.C : null, nl3Var2, hs1.u);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "scroll_axis_alignment", hs1.p, zD, at1Var != null ? at1Var.D : null, nl3Var3, l66Var);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, at1Var != null ? at1Var.E : null, this.a.l1);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, at1Var != null ? at1Var.F : null, this.a.P8);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "transform", zD, at1Var != null ? at1Var.G : null, this.a.S8);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, at1Var != null ? at1Var.H : null, this.a.V1);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, at1Var != null ? at1Var.I : null, this.a.A1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, at1Var != null ? at1Var.J : null, this.a.A1);
        zw2 zw2Var5 = at1Var != null ? at1Var.K : null;
        nl3 nl3Var5 = pd2.d;
        st3 st3Var = hs1.v;
        st3Var.getClass();
        return new at1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarB7, zw2VarB8, zw2VarC3, zw2VarC4, zw2VarB9, zw2VarC5, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarC6, zw2VarA, zw2VarB15, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarC7, zw2VarC8, zw2VarB24, zw2VarB25, zw2VarB26, zw2VarB27, pq3.a(tr4VarB, jSONObject, zD, zw2Var5, nl3Var5, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, at1Var != null ? at1Var.L : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, at1Var != null ? at1Var.M : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", hs1.q, zD, at1Var != null ? at1Var.N : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, at1Var != null ? at1Var.O : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, at1Var != null ? at1Var.P : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, at1Var != null ? at1Var.Q : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
