package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vb1 implements ln0 {
    public final tq3 a;

    public vb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "space_between_centers", this.a.v3);
        if (af1Var == null) {
            af1Var = yb1.a;
        }
        return new ub1(af1Var);
    }
}
