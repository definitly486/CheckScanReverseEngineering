package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class zm5 {
    public static c81 a(Context context, ym5 ym5Var, vn1 vn1Var) {
        cf2 df2Var;
        zg5 zg5Var;
        qi1 qi1Var = new qi1(context);
        ma1 ma1Var = new ma1(new ua1(), new ya1(), new xa1(), new ta1(), new ab1(), new va1());
        xn1 xn1Var = new xn1(vn1Var);
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
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        mr2[] mr2VarArr = mr2.b;
        arrayList2.add(ym5Var);
        arrayList2.add(xn1Var);
        return new c81(qi1Var, new lu0(), new ff3(), qq0.a, arrayList, ma1Var, xc2.a, arrayList2, sc1.a, cf2Var, new HashMap(), new rg6(), new yf2());
    }
}
