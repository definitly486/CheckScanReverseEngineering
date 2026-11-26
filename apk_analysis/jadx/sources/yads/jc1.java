package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jc1 implements qv5 {
    public final tq3 a;

    public jc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        lc1 lc1Var = (lc1) xq3Var;
        zw2 zw2Var = lc1Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = kc1.e;
        xr2 xr2Var = kc1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "disappear_duration", s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var2 = lc1Var.b;
        tq3 tq3Var = this.a;
        nc1 nc1Var = (nc1) qq3.b(ys4Var, zw2Var2, jSONObject, "download_callbacks", tq3Var.T2, tq3Var.R2);
        zw2 zw2Var3 = lc1Var.c;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = kc1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "is_enabled", o36Var, nl3Var2, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarA3 = qq3.a(ys4Var, lc1Var.d, jSONObject, "log_id", w36.c);
        zw2 zw2Var4 = lc1Var.e;
        l66 l66Var2 = kc1.f;
        xr2 xr2Var3 = kc1.c;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "log_limit", s36Var, nl3Var, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        JSONObject jSONObject2 = (JSONObject) qq3.a(ys4Var, lc1Var.f, jSONObject, "payload");
        zw2 zw2Var5 = lc1Var.g;
        v36 v36Var = w36.e;
        nl3 nl3Var3 = bt4.b;
        as2 as2VarB = qq3.b(ys4Var, zw2Var5, jSONObject, "referer", v36Var, nl3Var3);
        String str = (String) qq3.a(ys4Var, lc1Var.h, jSONObject, "scope_id");
        zw2 zw2Var6 = lc1Var.i;
        tq3 tq3Var2 = this.a;
        ry0 ry0Var = (ry0) qq3.b(ys4Var, zw2Var6, jSONObject, "typed", tq3Var2.d1, tq3Var2.b1);
        as2 as2VarB2 = qq3.b(ys4Var, lc1Var.j, jSONObject, "url", v36Var, nl3Var3);
        zw2 zw2Var7 = lc1Var.k;
        l66 l66Var3 = kc1.g;
        xr2 xr2Var4 = kc1.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var7, jSONObject, "visibility_percentage", s36Var, nl3Var, l66Var3, xr2Var4);
        return new gc1(str, jSONObject2, ry0Var, nc1Var, as2Var, as2Var2, as2VarA3, as2Var3, as2VarB, as2VarB2, as2VarA5 == null ? xr2Var4 : as2VarA5);
    }
}
