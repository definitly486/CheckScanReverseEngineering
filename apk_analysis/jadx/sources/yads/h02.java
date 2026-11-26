package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h02 implements ln0 {
    public final tq3 a;

    public h02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        return new g02(oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, uq3.a), (f02) wq3.a(ys4Var, jSONObject, "shape", this.a.N6), (l42) wq3.c(ys4Var, jSONObject, "stroke", this.a.D7));
    }
}
