package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class x51 implements kv5 {
    public static a61 a(ys4 ys4Var, a61 a61Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        zw2 zw2Var = a61Var != null ? a61Var.a : null;
        nl3 nl3Var = bt4.e;
        return new a61(pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var, nl3Var, z51.e), pq3.b(tr4VarB, jSONObject, "interpolator", z51.d, zD, a61Var != null ? a61Var.b : null, o11.d, uq3.a), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, a61Var != null ? a61Var.c : null, nl3Var, z51.f));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
