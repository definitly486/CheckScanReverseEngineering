package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l56 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str = (String) wq3.a("name", jSONObject);
        v36 v36Var = w36.e;
        nl3 nl3Var = bt4.b;
        y50 y50Var = oq3.a;
        return new k56(str, oq3.a(ys4Var, jSONObject, "value", v36Var, nl3Var, uq3.a));
    }
}
