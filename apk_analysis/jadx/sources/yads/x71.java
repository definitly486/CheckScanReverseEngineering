package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class x71 implements kv5 {
    public final tq3 a;

    public x71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final a81 a(ys4 ys4Var, a81 a81Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "cancel_actions", zD, a81Var != null ? a81Var.a : null, this.a.l1);
        m36 m36Var = z71.e;
        zw2 zw2Var = a81Var != null ? a81Var.b : null;
        nl3 nl3Var = m11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "direction", m36Var, zD, zw2Var, nl3Var, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = a81Var != null ? a81Var.c : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var2, nl3Var2, z71.g);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "end_actions", zD, a81Var != null ? a81Var.d : null, this.a.l1);
        p36 p36Var = w36.f;
        zw2 zw2Var3 = a81Var != null ? a81Var.e : null;
        nl3 nl3Var3 = bt4.a;
        return new a81(zw2VarC, zw2VarB, zw2VarA, zw2VarC2, pq3.a(tr4VarB, jSONObject, "end_value", p36Var, zD, zw2Var3, nl3Var3, l66Var), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, a81Var != null ? a81Var.f : null), pq3.b(tr4VarB, jSONObject, "interpolator", z71.f, zD, a81Var != null ? a81Var.g : null, o11.d, l66Var), pq3.b(tr4VarB, jSONObject, "repeat_count", zD, a81Var != null ? a81Var.h : null, this.a.w2), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, a81Var != null ? a81Var.i : null, nl3Var2, z71.h), pq3.b(tr4VarB, jSONObject, "start_value", p36Var, zD, a81Var != null ? a81Var.j : null, nl3Var3, l66Var), pq3.a(tr4VarB, jSONObject, "variable_name", zD, a81Var != null ? a81Var.k : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
