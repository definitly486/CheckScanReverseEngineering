package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q11 implements kv5 {
    public final tq3 a;

    public q11(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, null, nl3Var, s11.g);
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = uq3.a;
        return new t11(zw2VarB, pq3.b(tr4VarB, jSONObject, "end_value", r36Var, zD, null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "interpolator", s11.e, zD, null, o11.d, l66Var), pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, null, this.a.r1), pq3.a(tr4VarB, jSONObject, "name", s11.f, zD, null, j11.d, l66Var), pq3.b(tr4VarB, jSONObject, "repeat", zD, (zw2) null, this.a.w2), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, null, nl3Var, s11.h), pq3.b(tr4VarB, jSONObject, "start_value", r36Var, zD, null, nl3Var2, l66Var));
    }
}
