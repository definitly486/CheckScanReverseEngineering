package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bx1 implements kv5 {
    public final tq3 a;

    public bx1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b4  */
    public final by1 a(ys4 ys4Var, by1 by1Var, JSONObject jSONObject) {
        zw2 zw2VarA;
        zw2 zw2VarA2;
        zw2 xw2Var;
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "center_x", zD, by1Var != null ? by1Var.a : null, this.a.V5);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "center_y", zD, by1Var != null ? by1Var.b : null, this.a.V5);
        zw2 zw2Var = by1Var != null ? by1Var.c : null;
        defpackage.cl4 cl4Var = this.a.n6;
        st3 st3Var = dx1.e;
        st3Var.getClass();
        List listB = wq3.b(tr4VarB, jSONObject, "color_map", cl4Var, st3Var);
        if (listB != null) {
            zw2VarA = new yw2(listB, zD);
        } else {
            String strA = pq3.a(tr4VarB, jSONObject, "color_map");
            if (strA != null) {
                zw2VarA = new xw2(strA, zD);
            } else if (zw2Var != null) {
                zw2VarA = ax2.a(zw2Var, zD);
            } else {
                zw2VarA = zD ? ww2.c : vw2.c;
                zw2VarA.getClass();
            }
        }
        zw2 zw2Var2 = zw2VarA;
        p36 p36Var = w36.f;
        zw2 zw2Var3 = by1Var != null ? by1Var.d : null;
        nl3 nl3Var = bt4.a;
        st3 st3Var2 = dx1.d;
        st3Var2.getClass();
        ds2 ds2VarA = oq3.a(tr4VarB, jSONObject, "colors", p36Var, nl3Var, st3Var2, uq3.a);
        if (ds2VarA == null) {
            String strA2 = pq3.a(tr4VarB, jSONObject, "colors");
            if (strA2 != null) {
                xw2Var = new xw2(strA2, zD);
            } else if (zw2Var3 != null) {
                zw2VarA2 = ax2.a(zw2Var3, zD);
            } else {
                zw2VarA2 = zD ? ww2.c : vw2.c;
                zw2VarA2.getClass();
            }
            return new by1(zw2VarB, zw2VarB2, zw2Var2, xw2Var, pq3.b(tr4VarB, jSONObject, "radius", zD, by1Var != null ? by1Var.e : null, this.a.b6));
        }
        zw2VarA2 = new yw2(ds2VarA, zD);
        xw2Var = zw2VarA2;
        return new by1(zw2VarB, zw2VarB2, zw2Var2, xw2Var, pq3.b(tr4VarB, jSONObject, "radius", zD, by1Var != null ? by1Var.e : null, this.a.b6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
