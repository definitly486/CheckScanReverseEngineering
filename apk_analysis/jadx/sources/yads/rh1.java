package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rh1 implements kv5 {
    public final tq3 a;

    public rh1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final vh1 a(ys4 ys4Var, vh1 vh1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, vh1Var != null ? vh1Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, vh1Var != null ? vh1Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, vh1Var != null ? vh1Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, vh1Var != null ? vh1Var.d : null, this.a.l1);
        m36 m36Var = th1.i;
        zw2 zw2Var = vh1Var != null ? vh1Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        m36 m36Var2 = th1.j;
        zw2 zw2Var2 = vh1Var != null ? vh1Var.f : null;
        nl3 nl3Var2 = h11.d;
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var2, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, vh1Var != null ? vh1Var.g : null, bt4.d, th1.n);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, vh1Var != null ? vh1Var.h : null, this.a.u1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, vh1Var != null ? vh1Var.i : null, this.a.G1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "border", zD, vh1Var != null ? vh1Var.j : null, this.a.M1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", w36.a, zD, vh1Var != null ? vh1Var.k : null, bt4.c, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = vh1Var != null ? vh1Var.l : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "column_count", s36Var, zD, zw2Var3, nl3Var3, th1.o);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, vh1Var != null ? vh1Var.m : null, nl3Var3, th1.p);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "content_alignment_horizontal", th1.k, zD, vh1Var != null ? vh1Var.n : null, nl3Var, l66Var);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "content_alignment_vertical", th1.l, zD, vh1Var != null ? vh1Var.o : null, nl3Var2, l66Var);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, vh1Var != null ? vh1Var.p : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, vh1Var != null ? vh1Var.q : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, vh1Var != null ? vh1Var.r : null, this.a.b3);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "focus", zD, vh1Var != null ? vh1Var.s : null, this.a.z3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, vh1Var != null ? vh1Var.t : null, this.a.I3);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, vh1Var != null ? vh1Var.u : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, vh1Var != null ? vh1Var.v : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, vh1Var != null ? vh1Var.w : null, this.a.l1);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, vh1Var != null ? vh1Var.x : null);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, vh1Var != null ? vh1Var.y : null, this.a.t9);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, vh1Var != null ? vh1Var.z : null, this.a.K4);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, vh1Var != null ? vh1Var.A : null, this.a.l1);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "margins", zD, vh1Var != null ? vh1Var.B : null, this.a.Y2);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "paddings", zD, vh1Var != null ? vh1Var.C : null, this.a.Y2);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, vh1Var != null ? vh1Var.D : null, this.a.l1);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, vh1Var != null ? vh1Var.E : null, this.a.l1);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, vh1Var != null ? vh1Var.F : null);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, vh1Var != null ? vh1Var.G : null, nl3Var3, th1.q);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, vh1Var != null ? vh1Var.H : null, this.a.l1);
        zw2 zw2VarC15 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, vh1Var != null ? vh1Var.I : null, this.a.P8);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "transform", zD, vh1Var != null ? vh1Var.J : null, this.a.S8);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, vh1Var != null ? vh1Var.K : null, this.a.V1);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, vh1Var != null ? vh1Var.L : null, this.a.A1);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, vh1Var != null ? vh1Var.M : null, this.a.A1);
        zw2 zw2Var4 = vh1Var != null ? vh1Var.N : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var = th1.r;
        st3Var.getClass();
        return new vh1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarC3, zw2VarB7, zw2VarB8, zw2VarA, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarC4, zw2VarC5, zw2VarC6, zw2VarB12, zw2VarC7, zw2VarB13, zw2VarC8, zw2VarC9, zw2VarB14, zw2VarC10, zw2VarB15, zw2VarC11, zw2VarB16, zw2VarB17, zw2VarC12, zw2VarC13, zw2VarB18, zw2VarB19, zw2VarC14, zw2VarC15, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, pq3.a(tr4VarB, jSONObject, zD, zw2Var4, nl3Var4, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, vh1Var != null ? vh1Var.O : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, vh1Var != null ? vh1Var.P : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", th1.m, zD, vh1Var != null ? vh1Var.Q : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, vh1Var != null ? vh1Var.R : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, vh1Var != null ? vh1Var.S : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, vh1Var != null ? vh1Var.T : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
