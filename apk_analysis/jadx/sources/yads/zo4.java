package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zo4 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str = (String) wq3.a("name", jSONObject);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        y50 y50Var = oq3.a;
        return new yo4(str, oq3.a(ys4Var, jSONObject, "value", r36Var, nl3Var, uq3.a));
    }
}
