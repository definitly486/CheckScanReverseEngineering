package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class yl0 {
    public final Context a;
    public final bf5 b;
    public final defpackage.y22 c;

    public yl0(Context context, bf5 bf5Var, defpackage.y22 y22Var) {
        this.a = context;
        this.b = bf5Var;
        this.c = y22Var;
    }

    public static final j59 b(defpackage.bm3[] bm3VarArr, n8 n8Var) {
        defpackage.bm3 bm3Var = bm3VarArr[0];
        if (bm3Var != null) {
            bm3Var.invoke(n8Var, g13.REWARDED);
        }
        return j59.a;
    }

    public static final j59 c(defpackage.bm3[] bm3VarArr, n8 n8Var) {
        defpackage.bm3 bm3Var = bm3VarArr[0];
        if (bm3Var != null) {
            bm3Var.invoke(n8Var, g13.APP_OPEN);
        }
        return j59.a;
    }

    public final n13 a() {
        if (g1.d == null) {
            synchronized (g1.c) {
                try {
                    if (g1.d == null) {
                        g1.d = new g1();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        g1 g1Var = g1.d;
        if (g1Var == null) {
            defpackage.fg.c("Required value was null.");
            return null;
        }
        defpackage.bm3[] bm3VarArr = {null};
        n13 n13Var = new n13(this.c, defpackage.n05.e(new defpackage.b36(g13.INTERSTITIAL, new vp3(this.a, this.b, g1Var, this.c, new defpackage.rh0(bm3VarArr, 8))), new defpackage.b36(g13.REWARDED, new ya5(this.a, this.b, g1Var, this.c, new defpackage.v82(bm3VarArr, 4))), new defpackage.b36(g13.APP_OPEN, new ph(this.a, this.b, g1Var, this.c, new defpackage.dt0(bm3VarArr, 4)))));
        bm3VarArr[0] = new xl0(n13Var);
        return n13Var;
    }

    public static final j59 a(defpackage.bm3[] bm3VarArr, n8 n8Var) {
        defpackage.bm3 bm3Var = bm3VarArr[0];
        if (bm3Var != null) {
            bm3Var.invoke(n8Var, g13.INTERSTITIAL);
        }
        return j59.a;
    }
}
