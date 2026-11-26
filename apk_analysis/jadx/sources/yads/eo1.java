package yads;

import android.content.Context;
import defpackage.fh8;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class eo1 {
    public final Context a;
    public final vn1 b;
    public final defpackage.cl4 d;

    public eo1(Context context, vn1 vn1Var, kb0 kb0Var) {
        this.a = context;
        this.b = vn1Var;
        this.d = new fh8(new defpackage.nf0(this, 5));
    }

    public static final c81 a(eo1 eo1Var) {
        cf2 df2Var;
        eo1Var.getClass();
        qi1 qi1Var = new qi1(eo1Var.a);
        ma1 ma1Var = new ma1(new ua1(), new ya1(), new xa1(), new ta1(), new ab1(), new va1());
        zg5 zg5Var = zg5.l;
        if (zg5Var == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
        }
        fe5 fe5VarA = zg5Var.a(eo1Var.a);
        Boolean boolValueOf = fe5VarA != null ? Boolean.valueOf(je5.a(fe5VarA)) : null;
        Boolean boolValueOf2 = fe5VarA != null ? Boolean.valueOf(fe5VarA.a1) : null;
        Boolean bool = Boolean.TRUE;
        if (defpackage.aa4.e(boolValueOf, bool)) {
            df2Var = new dy1(eo1Var.a);
        } else {
            df2Var = defpackage.aa4.e(boolValueOf2, bool) ? cf2.a : new df2(eo1Var.a);
        }
        cf2 cf2Var = df2Var;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        mr2[] mr2VarArr = mr2.b;
        vn1 vn1Var = eo1Var.b;
        if (vn1Var != null) {
            arrayList2.add(new xn1(vn1Var));
        }
        arrayList2.add(new lo1());
        return new c81(qi1Var, new lu0(), new ff3(), qq0.a, arrayList, ma1Var, xc2.a, arrayList2, sc1.a, cf2Var, new HashMap(), new rg6(), new yf2());
    }

    public /* synthetic */ eo1(Context context, vn1 vn1Var, int i) {
        this(context, (i & 2) != 0 ? null : vn1Var, (kb0) null);
    }
}
