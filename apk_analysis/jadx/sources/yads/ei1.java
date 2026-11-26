package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ei1 implements qv5 {
    public final tq3 a;

    public ei1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final bi1 a(ys4 ys4Var, gi1 gi1Var, JSONObject jSONObject) {
        zw2 zw2Var = gi1Var.a;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = fi1.i;
        as2 as2Var = fi1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var2 = gi1Var.b;
        m36 m36Var = fi1.f;
        nl3 nl3Var2 = f11.d;
        xr2 xr2Var = fi1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, "content_alignment_horizontal", m36Var, nl3Var2, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        zw2 zw2Var3 = gi1Var.c;
        m36 m36Var2 = fi1.g;
        nl3 nl3Var3 = h11.d;
        xr2 xr2Var2 = fi1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, "content_alignment_vertical", m36Var2, nl3Var3, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        zw2 zw2Var4 = gi1Var.d;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "filters", tq3Var.l3, tq3Var.j3);
        as2 as2VarA4 = qq3.a(ys4Var, gi1Var.e, jSONObject, "image_url", w36.e, bt4.b);
        zw2 zw2Var5 = gi1Var.f;
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var3 = fi1.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var5, jSONObject, "preload_required", o36Var, nl3Var4, xr2Var3);
        as2 as2Var2 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        zw2 zw2Var6 = gi1Var.g;
        m36 m36Var3 = fi1.h;
        nl3 nl3Var5 = vi1.d;
        as2 as2Var3 = fi1.e;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var6, jSONObject, "scale", m36Var3, nl3Var5, as2Var3);
        if (as2VarA6 != null) {
            as2Var3 = as2VarA6;
        }
        return new bi1(as2Var, as2VarA2, as2VarA3, listC, as2VarA4, as2Var2, as2Var3);
    }
}
