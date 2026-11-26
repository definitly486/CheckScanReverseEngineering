package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qu implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str = (String) wq3.a("name", jSONObject);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        y50 y50Var = oq3.a;
        return new pu(str, oq3.a(ys4Var, jSONObject, "value", o36Var, nl3Var, uq3.a));
    }
}
