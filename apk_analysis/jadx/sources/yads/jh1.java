package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jh1 implements kv5 {
    public final tq3 a;

    public jh1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final mh1 a(ys4 ys4Var, mh1 mh1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, mh1Var != null ? mh1Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, mh1Var != null ? mh1Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, mh1Var != null ? mh1Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, mh1Var != null ? mh1Var.d : null, this.a.l1);
        m36 m36Var = lh1.l;
        zw2 zw2Var = mh1Var != null ? mh1Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        m36 m36Var2 = lh1.m;
        zw2 zw2Var2 = mh1Var != null ? mh1Var.f : null;
        nl3 nl3Var2 = h11.d;
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var2, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, mh1Var != null ? mh1Var.g : null, bt4.d, lh1.r);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, mh1Var != null ? mh1Var.h : null, this.a.u1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "aspect", zD, mh1Var != null ? mh1Var.i : null, this.a.D1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, mh1Var != null ? mh1Var.j : null, this.a.G1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "border", zD, mh1Var != null ? mh1Var.k : null, this.a.M1);
        o36 o36Var = w36.a;
        zw2 zw2Var3 = mh1Var != null ? mh1Var.l : null;
        nl3 nl3Var3 = bt4.c;
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", o36Var, zD, zw2Var3, nl3Var3, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var4 = mh1Var != null ? mh1Var.m : null;
        nl3 nl3Var4 = bt4.e;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var4, nl3Var4, lh1.s);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "content_alignment_horizontal", lh1.n, zD, mh1Var != null ? mh1Var.n : null, nl3Var, l66Var);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "content_alignment_vertical", lh1.o, zD, mh1Var != null ? mh1Var.o : null, nl3Var2, l66Var);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, mh1Var != null ? mh1Var.p : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, mh1Var != null ? mh1Var.q : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, mh1Var != null ? mh1Var.r : null, this.a.b3);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "focus", zD, mh1Var != null ? mh1Var.s : null, this.a.z3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, mh1Var != null ? mh1Var.t : null, this.a.I3);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "gif_url", w36.e, zD, mh1Var != null ? mh1Var.u : null, bt4.b, l66Var);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, mh1Var != null ? mh1Var.v : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, mh1Var != null ? mh1Var.w : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, mh1Var != null ? mh1Var.x : null, this.a.l1);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, mh1Var != null ? mh1Var.y : null);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, mh1Var != null ? mh1Var.z : null, this.a.K4);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, mh1Var != null ? mh1Var.A : null, this.a.l1);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "margins", zD, mh1Var != null ? mh1Var.B : null, this.a.Y2);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "paddings", zD, mh1Var != null ? mh1Var.C : null, this.a.Y2);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "placeholder_color", w36.f, zD, mh1Var != null ? mh1Var.D : null, bt4.a, l66Var);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "preload_required", o36Var, zD, mh1Var != null ? mh1Var.E : null, nl3Var3, l66Var);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, mh1Var != null ? mh1Var.F : null, this.a.l1);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, mh1Var != null ? mh1Var.G : null, this.a.l1);
        u36 u36Var = w36.c;
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "preview", u36Var, zD, mh1Var != null ? mh1Var.H : null);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, mh1Var != null ? mh1Var.I : null);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, mh1Var != null ? mh1Var.J : null, nl3Var4, lh1.t);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "scale", lh1.p, zD, mh1Var != null ? mh1Var.K : null, vi1.d, l66Var);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, mh1Var != null ? mh1Var.L : null, this.a.l1);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, mh1Var != null ? mh1Var.M : null, this.a.P8);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transform", zD, mh1Var != null ? mh1Var.N : null, this.a.S8);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, mh1Var != null ? mh1Var.O : null, this.a.V1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, mh1Var != null ? mh1Var.P : null, this.a.A1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, mh1Var != null ? mh1Var.Q : null, this.a.A1);
        zw2 zw2Var5 = mh1Var != null ? mh1Var.R : null;
        nl3 nl3Var5 = pd2.d;
        st3 st3Var = lh1.u;
        st3Var.getClass();
        return new mh1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarB7, zw2VarC3, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarC4, zw2VarC5, zw2VarC6, zw2VarB13, zw2VarC7, zw2VarA, zw2VarB14, zw2VarC8, zw2VarC9, zw2VarB15, zw2VarB16, zw2VarC10, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarC11, zw2VarC12, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarC13, zw2VarC14, zw2VarB25, zw2VarB26, zw2VarB27, zw2VarB28, pq3.a(tr4VarB, jSONObject, zD, zw2Var5, nl3Var5, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, mh1Var != null ? mh1Var.S : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, mh1Var != null ? mh1Var.T : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", lh1.q, zD, mh1Var != null ? mh1Var.U : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, mh1Var != null ? mh1Var.V : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, mh1Var != null ? mh1Var.W : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, mh1Var != null ? mh1Var.X : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
