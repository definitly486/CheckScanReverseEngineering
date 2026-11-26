package yads;

import android.content.Context;
import com.yandex.mobile.ads.R$layout;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ms3 {
    public final bf5 a;

    public ms3(bf5 bf5Var) {
        this.a = bf5Var;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    public final mr3 a(Context context, d9 d9Var, pg4 pg4Var, h80 h80Var, m2 m2Var, b4 b4Var) {
        String str;
        List list;
        sd4 sd4Var;
        List list2;
        Object next;
        by3 by3Var;
        vg4 vg4VarB = pg4Var.b();
        if (vg4VarB == null || (list = vg4VarB.a) == null || (sd4Var = (sd4) defpackage.qn1.V(list)) == null || (list2 = sd4Var.b) == null) {
            str = null;
        } else {
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((ak) next).a, "media"));
            ak akVar = (ak) next;
            if (akVar != null) {
                Object obj = akVar.c;
                v14 v14Var = obj instanceof v14 ? (v14) obj : null;
                if (v14Var == null || (by3Var = v14Var.a) == null) {
                    str = null;
                } else {
                    tz3 tz3Var = by3Var.a;
                    rz3 rz3Var = tz3Var instanceof rz3 ? (rz3) tz3Var : null;
                    if (rz3Var != null) {
                        str = rz3Var.a;
                    } else {
                        str = null;
                    }
                }
            } else {
                str = null;
            }
        }
        if (str == null) {
            return null;
        }
        vs3 vs3Var = new vs3(context.getApplicationContext());
        pz pzVar = new pz(nn0.b);
        cs3 cs3Var = new cs3(pzVar);
        Context context2 = ((do6) this.a).a;
        return new mr3(R$layout.monetization_ads_internal_divkit, new ks3(pg4Var, h80Var, pzVar, cs3Var, vs3Var, str, mw.a(context2, context2), m2Var, b4Var), new ls3(d9Var));
    }
}
