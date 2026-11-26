package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qm3 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str = (String) wq3.a("name", jSONObject);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        y50 y50Var = oq3.a;
        return new pm3(str, oq3.a(ys4Var, jSONObject, "value", s36Var, nl3Var, uq3.a));
    }
}
