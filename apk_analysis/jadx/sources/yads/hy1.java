package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hy1 implements ln0 {
    public final tq3 a;

    public hy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final gy1 a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "background_color", w36.f, bt4.a);
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "corner_radius", this.a.v3);
        if (af1Var == null) {
            af1Var = ky1.a;
        }
        af1 af1Var2 = (af1) wq3.c(ys4Var, jSONObject, "item_height", this.a.v3);
        if (af1Var2 == null) {
            af1Var2 = ky1.b;
        }
        af1 af1Var3 = (af1) wq3.c(ys4Var, jSONObject, "item_width", this.a.v3);
        if (af1Var3 == null) {
            af1Var3 = ky1.c;
        }
        return new gy1(as2VarA, af1Var, af1Var2, af1Var3, (l42) wq3.c(ys4Var, jSONObject, "stroke", this.a.D7));
    }
}
