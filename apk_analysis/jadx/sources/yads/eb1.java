package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class eb1 {
    public final q84 a;

    public eb1(q84 q84Var) {
        this.a = q84Var;
    }

    public final db1 a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            ht1 ht1Var = new ht1(et4.a, new px(new gf3(), new nv5()));
            if (jSONObject2 != null) {
                ht1Var.a(jSONObject2);
            }
            int i = db1.i;
            return ((ib1) gv.a.E2.getValue()).a(ht1Var, jSONObject);
        } catch (Throwable th) {
            this.a.reportError("Failed to create DivData", th);
            return null;
        }
    }
}
