package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class d61 implements kv5 {
    public final tq3 a;

    public d61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        defpackage.cl4 cl4Var = this.a.V1;
        st3 st3Var = f61.a;
        st3Var.getClass();
        return new g61(pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, (zw2) null, cl4Var, st3Var));
    }
}
