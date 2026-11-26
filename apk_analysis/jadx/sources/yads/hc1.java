package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hc1 implements ln0 {
    public final tq3 a;

    public hc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = kc1.e;
        xr2 xr2Var = kc1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "disappear_duration", s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        nc1 nc1Var = (nc1) wq3.c(ys4Var, jSONObject, "download_callbacks", this.a.R2);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = kc1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var2, uq3.a, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "log_id", w36.c);
        l66 l66Var2 = kc1.f;
        as2 as2Var3 = kc1.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "log_limit", s36Var, nl3Var, l66Var2, as2Var3);
        if (as2VarA4 != null) {
            as2Var3 = as2VarA4;
        }
        JSONObject jSONObject2 = (JSONObject) wq3.a(ys4Var, jSONObject, "payload");
        v36 v36Var = w36.e;
        nl3 nl3Var3 = bt4.b;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "referer", v36Var, nl3Var3);
        String str = (String) wq3.a(ys4Var, jSONObject, "scope_id");
        ry0 ry0Var = (ry0) wq3.c(ys4Var, jSONObject, "typed", this.a.b1);
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "url", v36Var, nl3Var3);
        l66 l66Var3 = kc1.g;
        xr2 xr2Var3 = kc1.d;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "visibility_percentage", s36Var, nl3Var, l66Var3, xr2Var3);
        new gc1(str, jSONObject2, ry0Var, nc1Var, as2Var, as2Var2, as2VarA3, as2Var3, as2VarA5, as2VarA6, as2VarA7 == null ? xr2Var3 : as2VarA7);
        return r8;
    }
}
