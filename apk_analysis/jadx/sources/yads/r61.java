package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r61 implements ln0 {
    public final tq3 a;

    public r61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "background_color", w36.f, bt4.a);
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "radius", this.a.v3);
        if (af1Var == null) {
            af1Var = u61.a;
        }
        return new q61(as2VarA, af1Var, (l42) wq3.c(ys4Var, jSONObject, "stroke", this.a.D7));
    }
}
