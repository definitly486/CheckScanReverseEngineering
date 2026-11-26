package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class v21 implements qv5 {
    public final tq3 a;

    public v21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final s21 a(ys4 ys4Var, a31 a31Var, JSONObject jSONObject) {
        if (a31Var instanceof y21) {
            l21 l21Var = (l21) this.a.y1.getValue();
            n21 n21Var = ((y21) a31Var).a;
            l21Var.getClass();
            zw2 zw2Var = n21Var.a;
            tq3 tq3Var = l21Var.a;
            return new q21(new i21(qq3.a(ys4Var, zw2Var, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var.B1, tq3Var.z1, m21.a)));
        }
        if (a31Var instanceof w21) {
            rd1 rd1Var = (rd1) this.a.f3.getValue();
            td1 td1Var = ((w21) a31Var).a;
            rd1Var.getClass();
            return new o21(rd1.a(ys4Var, td1Var, jSONObject));
        }
        if (a31Var instanceof x21) {
            qy1 qy1Var = (qy1) this.a.u6.getValue();
            sy1 sy1Var = ((x21) a31Var).a;
            qy1Var.getClass();
            return new p21(qy1.a(ys4Var, sy1Var, jSONObject));
        }
        if (a31Var instanceof z21) {
            return new r21(((s12) this.a.Y6.getValue()).a(ys4Var, ((z21) a31Var).a, jSONObject));
        }
        defpackage.me0.e();
        return null;
    }
}
