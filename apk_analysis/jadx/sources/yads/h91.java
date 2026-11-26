package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h91 implements qv5 {
    public final tq3 a;

    public h91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        j91 j91Var = (j91) xq3Var;
        zw2 zw2Var = j91Var.a;
        tq3 tq3Var = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var, jSONObject, "margins", tq3Var.Z2, tq3Var.X2);
        zw2 zw2Var2 = j91Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = i91.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "show_at_end", o36Var, nl3Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var3 = j91Var.c;
        xr2 xr2Var2 = i91.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "show_at_start", o36Var, nl3Var, xr2Var2);
        as2 as2Var = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var4 = j91Var.d;
        as2 as2Var2 = i91.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var4, jSONObject, "show_between", o36Var, nl3Var, as2Var2);
        if (as2VarA3 != null) {
            as2Var2 = as2VarA3;
        }
        zw2 zw2Var5 = j91Var.e;
        tq3 tq3Var2 = this.a;
        return new i81(yc1Var, as2VarA, as2Var, as2Var2, (tc1) qq3.a(ys4Var, zw2Var5, jSONObject, "style", tq3Var2.W2, tq3Var2.U2));
    }
}
