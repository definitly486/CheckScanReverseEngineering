package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p82 implements qv5 {
    public final tq3 a;

    public p82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final m82 a(ys4 ys4Var, s82 s82Var, JSONObject jSONObject) {
        if (s82Var instanceof q82) {
            return new k82(((kp1) this.a.O4.getValue()).a(ys4Var, ((q82) s82Var).a, jSONObject));
        }
        if (s82Var instanceof r82) {
            return new l82(((cx1) this.a.l6.getValue()).a(ys4Var, ((r82) s82Var).a, jSONObject));
        }
        defpackage.me0.e();
        return null;
    }
}
