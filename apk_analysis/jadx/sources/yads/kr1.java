package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kr1 implements qv5 {
    public static hr1 a(ys4 ys4Var, mr1 mr1Var, JSONObject jSONObject) {
        zw2 zw2Var = mr1Var.a;
        m36 m36Var = lr1.f;
        nl3 nl3Var = o11.d;
        as2 as2Var = lr1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "interpolator", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = mr1Var.b;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = lr1.g;
        xr2 xr2Var = lr1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "next_page_alpha", r36Var, nl3Var2, l66Var, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = mr1Var.c;
        l66 l66Var2 = lr1.h;
        xr2 xr2Var2 = lr1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "next_page_scale", r36Var, nl3Var2, l66Var2, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        zw2 zw2Var4 = mr1Var.d;
        l66 l66Var3 = lr1.i;
        xr2 xr2Var3 = lr1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "previous_page_alpha", r36Var, nl3Var2, l66Var3, xr2Var3);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var3;
        }
        zw2 zw2Var5 = mr1Var.e;
        l66 l66Var4 = lr1.j;
        xr2 xr2Var4 = lr1.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var5, jSONObject, "previous_page_scale", r36Var, nl3Var2, l66Var4, xr2Var4);
        return new hr1(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5 == null ? xr2Var4 : as2VarA5);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (mr1) xq3Var, jSONObject);
    }
}
