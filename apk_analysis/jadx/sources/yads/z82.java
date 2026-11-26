package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z82 implements qv5 {
    public final tq3 a;

    public z82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        db2 db2Var = (db2) xq3Var;
        zw2 zw2Var = db2Var.a;
        tq3 tq3Var = this.a;
        u72 u72Var = (u72) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.y8, tq3Var.w8);
        zw2 zw2Var2 = db2Var.b;
        m36 m36Var = a92.g;
        nl3 nl3Var = d82.d;
        xr2 xr2Var = a92.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alignment_vertical", m36Var, nl3Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var3 = db2Var.c;
        tq3 tq3Var2 = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var3, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var2.x3, tq3Var2.v3);
        if (af1Var == null) {
            af1Var = a92.b;
        }
        af1 af1Var2 = af1Var;
        zw2 zw2Var4 = db2Var.d;
        m36 m36Var2 = a92.h;
        nl3 nl3Var2 = w72.d;
        xr2 xr2Var2 = a92.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var4, jSONObject, "indexing_direction", m36Var2, nl3Var2, xr2Var2);
        as2 as2Var = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var5 = db2Var.e;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var3 = a92.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var5, jSONObject, "preload_required", o36Var, nl3Var3, xr2Var3);
        as2 as2Var2 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        as2 as2VarA4 = qq3.a(ys4Var, db2Var.f, jSONObject, TtmlNode.START, w36.b, bt4.e, a92.j);
        as2 as2VarB = qq3.b(ys4Var, db2Var.g, jSONObject, "tint_color", w36.f, bt4.a);
        zw2 zw2Var6 = db2Var.h;
        m36 m36Var3 = a92.i;
        nl3 nl3Var4 = y41.d;
        as2 as2Var3 = a92.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var6, jSONObject, "tint_mode", m36Var3, nl3Var4, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        as2 as2VarA6 = qq3.a(ys4Var, db2Var.i, jSONObject, "url", w36.e, bt4.b);
        zw2 zw2Var7 = db2Var.j;
        tq3 tq3Var3 = this.a;
        af1 af1Var3 = (af1) qq3.b(ys4Var, zw2Var7, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var3.x3, tq3Var3.v3);
        if (af1Var3 == null) {
            af1Var3 = a92.f;
        }
        return new x72(u72Var, as2VarA, af1Var2, as2Var, as2Var2, as2VarA4, as2VarB, as2Var3, as2VarA6, af1Var3);
    }
}
