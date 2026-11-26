package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class as0 implements kv5 {
    public final tq3 a;

    public as0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final ds0 a(ys4 ys4Var, ds0 ds0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "animator_id", zD, ds0Var != null ? ds0Var.a : null);
        m36 m36Var = cs0.a;
        zw2 zw2Var = ds0Var != null ? ds0Var.b : null;
        nl3 nl3Var = m11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "direction", m36Var, zD, zw2Var, nl3Var, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = ds0Var != null ? ds0Var.c : null;
        nl3 nl3Var2 = bt4.e;
        return new ds0(zw2VarA, zw2VarB, pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var2, nl3Var2, cs0.c), pq3.b(tr4VarB, jSONObject, "end_value", zD, ds0Var != null ? ds0Var.d : null, this.a.Y8), pq3.b(tr4VarB, jSONObject, "interpolator", cs0.b, zD, ds0Var != null ? ds0Var.e : null, o11.d, l66Var), pq3.b(tr4VarB, jSONObject, "repeat_count", zD, ds0Var != null ? ds0Var.f : null, this.a.w2), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, ds0Var != null ? ds0Var.g : null, nl3Var2, cs0.d), pq3.b(tr4VarB, jSONObject, "start_value", zD, ds0Var != null ? ds0Var.h : null, this.a.Y8));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
