package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tg2 implements kv5 {
    public final tq3 a;

    public tg2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final lh2 a(ys4 ys4Var, lh2 lh2Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, lh2Var != null ? lh2Var.a : null, this.a.I);
        m36 m36Var = vg2.j;
        zw2 zw2Var = lh2Var != null ? lh2Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", vg2.k, zD, lh2Var != null ? lh2Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, lh2Var != null ? lh2Var.d : null, bt4.d, vg2.n);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, lh2Var != null ? lh2Var.e : null, this.a.u1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "aspect", zD, lh2Var != null ? lh2Var.f : null, this.a.D1);
        o36 o36Var = w36.a;
        zw2 zw2Var2 = lh2Var != null ? lh2Var.g : null;
        nl3 nl3Var2 = bt4.c;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "autostart", o36Var, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, lh2Var != null ? lh2Var.h : null, this.a.G1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "border", zD, lh2Var != null ? lh2Var.i : null, this.a.M1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "buffering_actions", zD, lh2Var != null ? lh2Var.j : null, this.a.l1);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = lh2Var != null ? lh2Var.k : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var3, nl3Var3, vg2.o);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, lh2Var != null ? lh2Var.l : null, this.a.P2);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "elapsed_time_variable", zD, lh2Var != null ? lh2Var.m : null);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "end_actions", zD, lh2Var != null ? lh2Var.n : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, lh2Var != null ? lh2Var.o : null, this.a.b3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "fatal_actions", zD, lh2Var != null ? lh2Var.p : null, this.a.l1);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "focus", zD, lh2Var != null ? lh2Var.q : null, this.a.z3);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "functions", zD, lh2Var != null ? lh2Var.r : null, this.a.I3);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, lh2Var != null ? lh2Var.s : null, this.a.U6);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, lh2Var != null ? lh2Var.t : null);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, lh2Var != null ? lh2Var.u : null, this.a.K4);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "margins", zD, lh2Var != null ? lh2Var.v : null, this.a.Y2);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "muted", o36Var, zD, lh2Var != null ? lh2Var.w : null, nl3Var2, l66Var);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "paddings", zD, lh2Var != null ? lh2Var.x : null, this.a.Y2);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "pause_actions", zD, lh2Var != null ? lh2Var.y : null, this.a.l1);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "player_settings_payload", zD, lh2Var != null ? lh2Var.z : null);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "preload_required", o36Var, zD, lh2Var != null ? lh2Var.A : null, nl3Var2, l66Var);
        u36 u36Var = w36.c;
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "preview", u36Var, zD, lh2Var != null ? lh2Var.B : null);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "repeatable", o36Var, zD, lh2Var != null ? lh2Var.C : null, nl3Var2, l66Var);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "resume_actions", zD, lh2Var != null ? lh2Var.D : null, this.a.l1);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, lh2Var != null ? lh2Var.E : null);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, lh2Var != null ? lh2Var.F : null, nl3Var3, vg2.p);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "scale", vg2.l, zD, lh2Var != null ? lh2Var.G : null, yg2.d, l66Var);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, lh2Var != null ? lh2Var.H : null, this.a.l1);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, lh2Var != null ? lh2Var.I : null, this.a.P8);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "transform", zD, lh2Var != null ? lh2Var.J : null, this.a.S8);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, lh2Var != null ? lh2Var.K : null, this.a.V1);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, lh2Var != null ? lh2Var.L : null, this.a.A1);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, lh2Var != null ? lh2Var.M : null, this.a.A1);
        zw2 zw2Var4 = lh2Var != null ? lh2Var.N : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var = vg2.q;
        st3Var.getClass();
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, zD, zw2Var4, nl3Var4, st3Var);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, lh2Var != null ? lh2Var.O : null, this.a.V8);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "variables", zD, lh2Var != null ? lh2Var.P : null, this.a.b9);
        zw2 zw2Var5 = lh2Var != null ? lh2Var.Q : null;
        defpackage.cl4 cl4Var = this.a.e9;
        st3 st3Var2 = vg2.r;
        st3Var2.getClass();
        return new lh2(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarB7, zw2VarC3, zw2VarB8, zw2VarC4, zw2VarB9, zw2VarC5, zw2VarC6, zw2VarC7, zw2VarB10, zw2VarC8, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarC9, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarC10, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarC11, zw2VarC12, zw2VarB24, zw2VarB25, zw2VarB26, zw2VarB27, zw2VarA, zw2VarC13, zw2VarC14, pq3.a(tr4VarB, jSONObject, "video_sources", zD, zw2Var5, cl4Var, st3Var2), pq3.b(tr4VarB, jSONObject, "visibility", vg2.m, zD, lh2Var != null ? lh2Var.R : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, lh2Var != null ? lh2Var.S : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, lh2Var != null ? lh2Var.T : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, lh2Var != null ? lh2Var.U : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
