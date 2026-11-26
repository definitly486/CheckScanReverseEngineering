package yads;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class qn1 {
    public final on1 a;

    public qn1(on1 on1Var) {
        this.a = on1Var;
    }

    public final vq0 a(Context context, nn1 nn1Var) {
        cf2 df2Var;
        String lowerCase;
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        Boolean boolValueOf = fe5VarA != null ? Boolean.valueOf(je5.a(fe5VarA)) : null;
        Boolean boolValueOf2 = fe5VarA != null ? Boolean.valueOf(fe5VarA.a1) : null;
        Boolean bool = Boolean.TRUE;
        if (defpackage.aa4.e(boolValueOf, bool)) {
            df2Var = new dy1(context);
        } else {
            df2Var = defpackage.aa4.e(boolValueOf2, bool) ? cf2.a : new df2(context);
        }
        cf2 cf2Var = df2Var;
        qi1 qi1Var = new qi1(context);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        mr2[] mr2VarArr = mr2.b;
        vq0 vq0VarA = rh2.a(context, new c81(qi1Var, this.a, new ff3(), qq0.a, arrayList, oa1.a, xc2.a, arrayList2, sc1.a, cf2Var, new HashMap(), new rg6(), new yf2()), null, "");
        fo1 fo1Var = nn1Var.b;
        vq0VarA.a(fo1Var.e, fo1Var.f);
        yq4 yq4VarB = w60.b(context);
        if (yq4VarB == yq4.e) {
            lowerCase = "PORTRAIT".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = yq4VarB.name().toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        }
        l76.a(vq0VarA, TJAdUnitConstants.String.ORIENTATION, lowerCase, vq0.a(vq0VarA.z));
        return vq0VarA;
    }
}
