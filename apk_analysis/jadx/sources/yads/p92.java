package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p92 implements ln0 {
    public final tq3 a;

    public p92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new o92(oq3.a(ys4Var, jSONObject, "corner_radius", w36.b, bt4.e, s92.a, (as2) null), (l42) wq3.c(ys4Var, jSONObject, "stroke", this.a.D7));
    }
}
