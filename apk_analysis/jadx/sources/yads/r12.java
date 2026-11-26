package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r12 implements kv5 {
    public final tq3 a;

    public r12(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final u12 a(ys4 ys4Var, u12 u12Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "distance", zD, u12Var != null ? u12Var.a : null, this.a.M2);
        s36 s36Var = w36.b;
        zw2 zw2Var = u12Var != null ? u12Var.b : null;
        nl3 nl3Var = bt4.e;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var, nl3Var, t12.g);
        m36 m36Var = t12.e;
        zw2 zw2Var2 = u12Var != null ? u12Var.c : null;
        nl3 nl3Var2 = o12.d;
        l66 l66Var = uq3.a;
        return new u12(zw2VarB, zw2VarB2, pq3.b(tr4VarB, jSONObject, "edge", m36Var, zD, zw2Var2, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "interpolator", t12.f, zD, u12Var != null ? u12Var.d : null, o11.d, l66Var), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, u12Var != null ? u12Var.e : null, nl3Var, t12.h));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
