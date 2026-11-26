package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ir1 implements ln0 {
    public static hr1 b(ys4 ys4Var, JSONObject jSONObject) {
        m36 m36Var = lr1.f;
        nl3 nl3Var = o11.d;
        xr2 xr2Var = lr1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var, uq3.a, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = lr1.g;
        xr2 xr2Var2 = lr1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "next_page_alpha", r36Var, nl3Var2, l66Var, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        l66 l66Var2 = lr1.h;
        xr2 xr2Var3 = lr1.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "next_page_scale", r36Var, nl3Var2, l66Var2, xr2Var3);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var3;
        }
        l66 l66Var3 = lr1.i;
        xr2 xr2Var4 = lr1.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "previous_page_alpha", r36Var, nl3Var2, l66Var3, xr2Var4);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var4;
        }
        l66 l66Var4 = lr1.j;
        xr2 xr2Var5 = lr1.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "previous_page_scale", r36Var, nl3Var2, l66Var4, xr2Var5);
        return new hr1(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5 == null ? xr2Var5 : as2VarA5);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
