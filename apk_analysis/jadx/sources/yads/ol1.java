package yads;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ol1 implements qv5 {
    public final tq3 a;

    public ol1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final kl1 a(ys4 ys4Var, sl1 sl1Var, JSONObject jSONObject) {
        if (sl1Var instanceof ql1) {
            return new il1(((se1) this.a.r3.getValue()).a(ys4Var, ((ql1) sl1Var).a, jSONObject));
        }
        if (sl1Var instanceof pl1) {
            ia1 ia1Var = (ia1) this.a.A2.getValue();
            ja1 ja1Var = ((pl1) sl1Var).a;
            ia1Var.getClass();
            return new hl1(new fa1((String) qq3.a(ja1Var.b, jSONObject, "raw_text_variable"), qq3.b(ys4Var, ja1Var.a, jSONObject, CommonUrlParts.LOCALE, w36.c)));
        }
        if (!(sl1Var instanceof rl1)) {
            defpackage.me0.e();
            return null;
        }
        nu1 nu1Var = (nu1) this.a.H5.getValue();
        ou1 ou1Var = ((rl1) sl1Var).a;
        nu1Var.getClass();
        return new jl1(new ku1((String) qq3.a(ou1Var.a, jSONObject, "raw_text_variable")));
    }
}
