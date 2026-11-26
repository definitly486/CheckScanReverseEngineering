package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class li1 implements kv5 {
    public final tq3 a;

    public li1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final wi1 a(ys4 ys4Var, wi1 wi1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, wi1Var != null ? wi1Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, wi1Var != null ? wi1Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, wi1Var != null ? wi1Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, wi1Var != null ? wi1Var.d : null, this.a.l1);
        m36 m36Var = ni1.n;
        zw2 zw2Var = wi1Var != null ? wi1Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        m36 m36Var2 = ni1.o;
        zw2 zw2Var2 = wi1Var != null ? wi1Var.f : null;
        nl3 nl3Var2 = h11.d;
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var2, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, wi1Var != null ? wi1Var.g : null, bt4.d, ni1.u);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, wi1Var != null ? wi1Var.h : null, this.a.u1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "appearance_animation", zD, wi1Var != null ? wi1Var.i : null, this.a.e3);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "aspect", zD, wi1Var != null ? wi1Var.j : null, this.a.D1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, wi1Var != null ? wi1Var.k : null, this.a.G1);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "border", zD, wi1Var != null ? wi1Var.l : null, this.a.M1);
        o36 o36Var = w36.a;
        zw2 zw2Var3 = wi1Var != null ? wi1Var.m : null;
        nl3 nl3Var3 = bt4.c;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", o36Var, zD, zw2Var3, nl3Var3, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var4 = wi1Var != null ? wi1Var.n : null;
        nl3 nl3Var4 = bt4.e;
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var4, nl3Var4, ni1.v);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "content_alignment_horizontal", ni1.p, zD, wi1Var != null ? wi1Var.o : null, nl3Var, l66Var);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "content_alignment_vertical", ni1.q, zD, wi1Var != null ? wi1Var.p : null, nl3Var2, l66Var);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, wi1Var != null ? wi1Var.q : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, wi1Var != null ? wi1Var.r : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, wi1Var != null ? wi1Var.s : null, this.a.b3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "filters", zD, wi1Var != null ? wi1Var.t : null, this.a.k3);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "focus", zD, wi1Var != null ? wi1Var.u : null, this.a.z3);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "functions", zD, wi1Var != null ? wi1Var.v : null, this.a.I3);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, wi1Var != null ? wi1Var.w : null, this.a.U6);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "high_priority_preview_show", o36Var, zD, wi1Var != null ? wi1Var.x : null, nl3Var3, l66Var);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, wi1Var != null ? wi1Var.y : null, this.a.l1);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, wi1Var != null ? wi1Var.z : null, this.a.l1);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, wi1Var != null ? wi1Var.A : null);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "image_url", w36.e, zD, wi1Var != null ? wi1Var.B : null, bt4.b, l66Var);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, wi1Var != null ? wi1Var.C : null, this.a.K4);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, wi1Var != null ? wi1Var.D : null, this.a.l1);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "margins", zD, wi1Var != null ? wi1Var.E : null, this.a.Y2);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "paddings", zD, wi1Var != null ? wi1Var.F : null, this.a.Y2);
        p36 p36Var = w36.f;
        zw2 zw2Var5 = wi1Var != null ? wi1Var.G : null;
        nl3 nl3Var5 = bt4.a;
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "placeholder_color", p36Var, zD, zw2Var5, nl3Var5, l66Var);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "preload_required", o36Var, zD, wi1Var != null ? wi1Var.H : null, nl3Var3, l66Var);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, wi1Var != null ? wi1Var.I : null, this.a.l1);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, wi1Var != null ? wi1Var.J : null, this.a.l1);
        u36 u36Var = w36.c;
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "preview", u36Var, zD, wi1Var != null ? wi1Var.K : null);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, wi1Var != null ? wi1Var.L : null);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, wi1Var != null ? wi1Var.M : null, nl3Var4, ni1.w);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "scale", ni1.r, zD, wi1Var != null ? wi1Var.N : null, vi1.d, l66Var);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, wi1Var != null ? wi1Var.O : null, this.a.l1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "tint_color", p36Var, zD, wi1Var != null ? wi1Var.P : null, nl3Var5, l66Var);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "tint_mode", ni1.s, zD, wi1Var != null ? wi1Var.Q : null, y41.d, l66Var);
        zw2 zw2VarC15 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, wi1Var != null ? wi1Var.R : null, this.a.P8);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "transform", zD, wi1Var != null ? wi1Var.S : null, this.a.S8);
        zw2 zw2VarB30 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, wi1Var != null ? wi1Var.T : null, this.a.V1);
        zw2 zw2VarB31 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, wi1Var != null ? wi1Var.U : null, this.a.A1);
        zw2 zw2VarB32 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, wi1Var != null ? wi1Var.V : null, this.a.A1);
        zw2 zw2Var6 = wi1Var != null ? wi1Var.W : null;
        nl3 nl3Var6 = pd2.d;
        st3 st3Var = ni1.x;
        st3Var.getClass();
        return new wi1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarB7, zw2VarB8, zw2VarC3, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarC4, zw2VarC5, zw2VarC6, zw2VarC7, zw2VarB14, zw2VarC8, zw2VarB15, zw2VarB16, zw2VarC9, zw2VarC10, zw2VarB17, zw2VarA, zw2VarB18, zw2VarC11, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarC12, zw2VarC13, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarB26, zw2VarC14, zw2VarB27, zw2VarB28, zw2VarC15, zw2VarB29, zw2VarB30, zw2VarB31, zw2VarB32, pq3.a(tr4VarB, jSONObject, zD, zw2Var6, nl3Var6, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, wi1Var != null ? wi1Var.X : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, wi1Var != null ? wi1Var.Y : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", ni1.t, zD, wi1Var != null ? wi1Var.Z : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, wi1Var != null ? wi1Var.a0 : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, wi1Var != null ? wi1Var.b0 : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, wi1Var != null ? wi1Var.c0 : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
