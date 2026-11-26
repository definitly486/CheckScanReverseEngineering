package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h41 implements qv5 {
    public final tq3 a;

    public h41(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final m31 a(ys4 ys4Var, o41 o41Var, JSONObject jSONObject) {
        if (o41Var instanceof k41) {
            return new i31(((kp1) this.a.O4.getValue()).a(ys4Var, ((k41) o41Var).a, jSONObject));
        }
        if (o41Var instanceof m41) {
            return new k31(((cx1) this.a.l6.getValue()).a(ys4Var, ((m41) o41Var).a, jSONObject));
        }
        if (o41Var instanceof j41) {
            return new h31(((ei1) this.a.V3.getValue()).a(ys4Var, ((j41) o41Var).a, jSONObject));
        }
        if (o41Var instanceof n41) {
            w22 w22Var = (w22) this.a.k7.getValue();
            x22 x22Var = ((n41) o41Var).a;
            w22Var.getClass();
            return new l31(new t22(qq3.a(ys4Var, x22Var.a, jSONObject, "color", w36.f, bt4.a)));
        }
        if (!(o41Var instanceof l41)) {
            defpackage.me0.e();
            return null;
        }
        dq1 dq1Var = (dq1) this.a.a5.getValue();
        eq1 eq1Var = ((l41) o41Var).a;
        dq1Var.getClass();
        as2 as2VarA = qq3.a(ys4Var, eq1Var.a, jSONObject, "image_url", w36.e, bt4.b);
        zw2 zw2Var = eq1Var.b;
        tq3 tq3Var = dq1Var.a;
        return new j31(new aq1(as2VarA, (cr0) qq3.a(ys4Var, zw2Var, jSONObject, TJAdUnitConstants.String.INSETS, tq3Var.G, tq3Var.E)));
    }
}
