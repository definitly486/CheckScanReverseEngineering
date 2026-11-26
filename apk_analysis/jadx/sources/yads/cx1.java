package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cx1 implements qv5 {
    public final tq3 a;

    public cx1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0087  */
    @Override // yads.qv5
    public final gw1 a(ys4 ys4Var, by1 by1Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        ds2 ds2VarA;
        gx1 gx1Var;
        zw2 zw2Var = by1Var.a;
        tq3 tq3Var = this.a;
        jw1 jw1Var = (jw1) qq3.b(ys4Var, zw2Var, jSONObject, "center_x", tq3Var.W5, tq3Var.U5);
        if (jw1Var == null) {
            jw1Var = dx1.a;
        }
        zw2 zw2Var2 = by1Var.b;
        tq3 tq3Var2 = this.a;
        jw1 jw1Var2 = (jw1) qq3.b(ys4Var, zw2Var2, jSONObject, "center_y", tq3Var2.W5, tq3Var2.U5);
        if (jw1Var2 == null) {
            jw1Var2 = dx1.b;
        }
        zw2 zw2Var3 = by1Var.c;
        tq3 tq3Var3 = this.a;
        List listA = qq3.a(ys4Var, zw2Var3, jSONObject, tq3Var3.o6, tq3Var3.m6, dx1.e);
        zw2 zw2Var4 = by1Var.d;
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        st3 st3Var = dx1.d;
        l66 l66Var = uq3.a;
        if (zw2Var4.b) {
            jSONObject2 = jSONObject;
            if (jSONObject2.has("colors")) {
                ds2VarA = oq3.a(ys4Var, jSONObject2, "colors", p36Var, nl3Var, st3Var, l66Var);
            }
            ds2 ds2Var = ds2VarA;
            zw2 zw2Var5 = by1Var.e;
            tq3 tq3Var4 = this.a;
            gx1Var = (gx1) qq3.b(ys4Var, zw2Var5, jSONObject2, "radius", tq3Var4.c6, tq3Var4.a6);
            if (gx1Var == null) {
                gx1Var = dx1.c;
            }
            return new gw1(jw1Var, jw1Var2, listA, ds2Var, gx1Var);
        }
        jSONObject2 = jSONObject;
        int i = zw2Var4.a;
        if (i == 2) {
            ds2VarA = (ds2) ((yw2) zw2Var4).c;
        } else {
            ds2VarA = i == 3 ? oq3.a(ys4Var, jSONObject2, ((xw2) zw2Var4).c, p36Var, nl3Var, st3Var, l66Var) : null;
        }
        ds2 ds2Var2 = ds2VarA;
        zw2 zw2Var6 = by1Var.e;
        tq3 tq3Var5 = this.a;
        gx1Var = (gx1) qq3.b(ys4Var, zw2Var6, jSONObject2, "radius", tq3Var5.c6, tq3Var5.a6);
        if (gx1Var == null) {
            gx1Var = dx1.c;
        }
        return new gw1(jw1Var, jw1Var2, listA, ds2Var2, gx1Var);
    }
}
