package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ui2 implements ln0 {
    public final tq3 a;

    public ui2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2Var;
        as2 as2Var2;
        nc1 nc1Var = (nc1) wq3.c(ys4Var, jSONObject, "download_callbacks", this.a.R2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = xi2.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var, uq3.a, xr2Var);
        as2 as2Var3 = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "log_id", w36.c);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var = xi2.e;
        as2 as2Var4 = xi2.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "log_limit", s36Var, nl3Var2, l66Var, as2Var4);
        if (as2VarA3 != null) {
            as2Var4 = as2VarA3;
        }
        JSONObject jSONObject2 = (JSONObject) wq3.a(ys4Var, jSONObject, "payload");
        v36 v36Var = w36.e;
        nl3 nl3Var3 = bt4.b;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "referer", v36Var, nl3Var3);
        String str = (String) wq3.a(ys4Var, jSONObject, "scope_id");
        ry0 ry0Var = (ry0) wq3.c(ys4Var, jSONObject, "typed", this.a.b1);
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "url", v36Var, nl3Var3);
        l66 l66Var2 = xi2.f;
        xr2 xr2Var2 = xi2.c;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "visibility_duration", s36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var5 = as2VarA6 == null ? xr2Var2 : as2VarA6;
        l66 l66Var3 = xi2.g;
        xr2 xr2Var3 = xi2.d;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "visibility_percentage", s36Var, nl3Var2, l66Var3, xr2Var3);
        if (as2VarA7 == null) {
            as2Var2 = xr2Var3;
            as2Var = as2VarA2;
        } else {
            as2Var = as2VarA2;
            as2Var2 = as2VarA7;
        }
        new si2(str, jSONObject2, ry0Var, nc1Var, as2Var3, as2Var, as2Var4, as2VarA4, as2VarA5, as2Var5, as2Var2);
        return r8;
    }
}
