package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class d21 implements qv5 {
    public final tq3 a;

    public d21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final w11 a(ys4 ys4Var, g21 g21Var, JSONObject jSONObject) {
        if (g21Var instanceof e21) {
            return new u11(((y71) this.a.l2.getValue()).a(ys4Var, ((e21) g21Var).a, jSONObject));
        }
        if (g21Var instanceof f21) {
            return new v11(((iq1) this.a.d5.getValue()).a(ys4Var, ((f21) g21Var).a, jSONObject));
        }
        defpackage.me0.e();
        return null;
    }
}
