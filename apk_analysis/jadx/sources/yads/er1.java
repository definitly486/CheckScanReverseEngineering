package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class er1 implements qv5 {
    public static br1 a(ys4 ys4Var, gr1 gr1Var, JSONObject jSONObject) {
        zw2 zw2Var = gr1Var.a;
        m36 m36Var = fr1.g;
        nl3 nl3Var = o11.d;
        as2 as2Var = fr1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "interpolator", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = gr1Var.b;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = fr1.h;
        xr2 xr2Var = fr1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "next_page_alpha", r36Var, nl3Var2, l66Var, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = gr1Var.c;
        l66 l66Var2 = fr1.i;
        xr2 xr2Var2 = fr1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "next_page_scale", r36Var, nl3Var2, l66Var2, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        zw2 zw2Var4 = gr1Var.d;
        l66 l66Var3 = fr1.j;
        xr2 xr2Var3 = fr1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "previous_page_alpha", r36Var, nl3Var2, l66Var3, xr2Var3);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var3;
        }
        zw2 zw2Var5 = gr1Var.e;
        l66 l66Var4 = fr1.k;
        xr2 xr2Var4 = fr1.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var5, jSONObject, "previous_page_scale", r36Var, nl3Var2, l66Var4, xr2Var4);
        if (as2VarA5 == null) {
            as2VarA5 = xr2Var4;
        }
        zw2 zw2Var6 = gr1Var.f;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var5 = fr1.f;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var6, jSONObject, "reversed_stacking_order", o36Var, nl3Var3, xr2Var5);
        return new br1(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5, as2VarA6 == null ? xr2Var5 : as2VarA6);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (gr1) xq3Var, jSONObject);
    }
}
