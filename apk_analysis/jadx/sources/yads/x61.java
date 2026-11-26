package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class x61 implements ln0 {
    public final tq3 a;

    public x61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        return new w61(oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, uq3.a), oq3.a(ys4Var, jSONObject, "corner_radius", w36.b, bt4.e, a71.a), (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2));
    }
}
