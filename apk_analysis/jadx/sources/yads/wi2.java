package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wi2 implements qv5 {
    public final tq3 a;

    public wi2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        yi2 yi2Var = (yi2) xq3Var;
        zw2 zw2Var = yi2Var.a;
        tq3 tq3Var = this.a;
        nc1 nc1Var = (nc1) qq3.b(ys4Var, zw2Var, jSONObject, "download_callbacks", tq3Var.T2, tq3Var.R2);
        zw2 zw2Var2 = yi2Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = xi2.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "is_enabled", o36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = qq3.a(ys4Var, yi2Var.c, jSONObject, "log_id", w36.c);
        zw2 zw2Var3 = yi2Var.d;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var = xi2.e;
        xr2 xr2Var2 = xi2.b;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "log_limit", s36Var, nl3Var2, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        JSONObject jSONObject2 = (JSONObject) qq3.a(ys4Var, yi2Var.e, jSONObject, "payload");
        zw2 zw2Var4 = yi2Var.f;
        v36 v36Var = w36.e;
        nl3 nl3Var3 = bt4.b;
        as2 as2VarB = qq3.b(ys4Var, zw2Var4, jSONObject, "referer", v36Var, nl3Var3);
        String str = (String) qq3.a(ys4Var, yi2Var.g, jSONObject, "scope_id");
        zw2 zw2Var5 = yi2Var.h;
        tq3 tq3Var2 = this.a;
        ry0 ry0Var = (ry0) qq3.b(ys4Var, zw2Var5, jSONObject, "typed", tq3Var2.d1, tq3Var2.b1);
        as2 as2VarB2 = qq3.b(ys4Var, yi2Var.i, jSONObject, "url", v36Var, nl3Var3);
        zw2 zw2Var6 = yi2Var.j;
        l66 l66Var2 = xi2.f;
        xr2 xr2Var3 = xi2.c;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, "visibility_duration", s36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var7 = yi2Var.k;
        l66 l66Var3 = xi2.g;
        xr2 xr2Var4 = xi2.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var7, jSONObject, "visibility_percentage", s36Var, nl3Var2, l66Var3, xr2Var4);
        return new si2(str, jSONObject2, ry0Var, nc1Var, as2Var, as2VarA2, as2Var2, as2VarB, as2VarB2, as2Var3, as2VarA5 == null ? xr2Var4 : as2VarA5);
    }
}
