package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zz1 implements kv5 {
    public final tq3 a;

    public zz1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new c02(pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, null, bt4.d, b02.d), pq3.b(tr4VarB, jSONObject, "blur", w36.b, zD, null, bt4.e, b02.e), pq3.b(tr4VarB, jSONObject, "color", w36.f, zD, null, bt4.a, uq3.a), pq3.a(tr4VarB, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zD, (zw2) null, this.a.S5));
    }
}
