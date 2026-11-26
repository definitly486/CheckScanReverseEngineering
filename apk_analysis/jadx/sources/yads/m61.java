package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class m61 implements qv5 {
    public final tq3 a;

    public m61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final j61 a(ys4 ys4Var, p61 p61Var, JSONObject jSONObject) {
        if (p61Var instanceof o61) {
            e61 e61Var = (e61) this.a.T1.getValue();
            g61 g61Var = ((o61) p61Var).a;
            e61Var.getClass();
            zw2 zw2Var = g61Var.a;
            tq3 tq3Var = e61Var.a;
            return new i61(new b61(qq3.a(ys4Var, zw2Var, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var.W1, tq3Var.U1, f61.a)));
        }
        if (!(p61Var instanceof n61)) {
            defpackage.me0.e();
            return null;
        }
        y51 y51Var = (y51) this.a.Q1.getValue();
        a61 a61Var = ((n61) p61Var).a;
        y51Var.getClass();
        return new h61(y51.a(ys4Var, a61Var, jSONObject));
    }
}
