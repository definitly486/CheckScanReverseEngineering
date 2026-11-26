package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jp1 implements kv5 {
    public final tq3 a;

    public jp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final np1 a(ys4 ys4Var, np1 np1Var, JSONObject jSONObject) {
        zw2 zw2VarA;
        zw2 zw2VarA2;
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "angle", w36.b, zD, np1Var != null ? np1Var.a : null, bt4.e, lp1.b);
        zw2 zw2Var = np1Var != null ? np1Var.b : null;
        defpackage.cl4 cl4Var = this.a.Q4;
        st3 st3Var = lp1.d;
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
        zw2 zw2Var2 = null;
        p36 p36Var = w36.f;
        if (np1Var != null) {
            zw2Var2 = np1Var.c;
        }
        nl3 nl3Var = bt4.a;
        st3 st3Var2 = lp1.c;
        st3Var2.getClass();
        ds2 ds2VarA = oq3.a(tr4VarB, jSONObject, "colors", p36Var, nl3Var, st3Var2, uq3.a);
        if (ds2VarA != null) {
            zw2VarA2 = new yw2(ds2VarA, zD);
        } else {
            String strA2 = pq3.a(tr4VarB, jSONObject, "colors");
            if (strA2 != null) {
                zw2VarA2 = new xw2(strA2, zD);
            } else if (zw2Var2 != null) {
                zw2VarA2 = ax2.a(zw2Var2, zD);
            } else {
                zw2VarA2 = zD ? ww2.c : vw2.c;
                zw2VarA2.getClass();
            }
        }
        return new np1(zw2VarB, zw2VarA, zw2VarA2);
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
