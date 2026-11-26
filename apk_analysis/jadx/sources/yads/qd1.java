package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qd1 implements kv5 {
    public static td1 a(ys4 ys4Var, td1 td1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, td1Var != null ? td1Var.a : null, bt4.d, sd1.f);
        s36 s36Var = w36.b;
        zw2 zw2Var = td1Var != null ? td1Var.b : null;
        nl3 nl3Var = bt4.e;
        return new td1(zw2VarB, pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var, nl3Var, sd1.g), pq3.b(tr4VarB, jSONObject, "interpolator", sd1.e, zD, td1Var != null ? td1Var.c : null, o11.d, uq3.a), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, td1Var != null ? td1Var.d : null, nl3Var, sd1.h));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
