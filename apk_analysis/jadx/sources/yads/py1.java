package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class py1 implements kv5 {
    public static sy1 a(ys4 ys4Var, sy1 sy1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        zw2 zw2Var = sy1Var != null ? sy1Var.a : null;
        nl3 nl3Var = bt4.e;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var, nl3Var, ry1.h);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "interpolator", ry1.g, zD, sy1Var != null ? sy1Var.b : null, o11.d, uq3.a);
        r36 r36Var = w36.d;
        zw2 zw2Var2 = sy1Var != null ? sy1Var.c : null;
        nl3 nl3Var2 = bt4.d;
        return new sy1(zw2VarB, zw2VarB2, pq3.b(tr4VarB, jSONObject, "pivot_x", r36Var, zD, zw2Var2, nl3Var2, ry1.i), pq3.b(tr4VarB, jSONObject, "pivot_y", r36Var, zD, sy1Var != null ? sy1Var.d : null, nl3Var2, ry1.j), pq3.b(tr4VarB, jSONObject, "scale", r36Var, zD, sy1Var != null ? sy1Var.e : null, nl3Var2, ry1.k), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, sy1Var != null ? sy1Var.f : null, nl3Var, ry1.l));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
