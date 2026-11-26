package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cr1 implements ln0 {
    public static br1 b(ys4 ys4Var, JSONObject jSONObject) {
        m36 m36Var = fr1.g;
        nl3 nl3Var = o11.d;
        xr2 xr2Var = fr1.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var2 = fr1.h;
        xr2 xr2Var2 = fr1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "next_page_alpha", r36Var, nl3Var2, l66Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        l66 l66Var3 = fr1.i;
        xr2 xr2Var3 = fr1.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "next_page_scale", r36Var, nl3Var2, l66Var3, xr2Var3);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var3;
        }
        l66 l66Var4 = fr1.j;
        xr2 xr2Var4 = fr1.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "previous_page_alpha", r36Var, nl3Var2, l66Var4, xr2Var4);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var4;
        }
        l66 l66Var5 = fr1.k;
        xr2 xr2Var5 = fr1.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "previous_page_scale", r36Var, nl3Var2, l66Var5, xr2Var5);
        if (as2VarA5 == null) {
            as2VarA5 = xr2Var5;
        }
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var6 = fr1.f;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "reversed_stacking_order", o36Var, nl3Var3, l66Var, xr2Var6);
        return new br1(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5, as2VarA6 == null ? xr2Var6 : as2VarA6);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
