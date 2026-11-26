package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class qi5 {
    public static boolean a(Context context) {
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
        return fe5VarA == null || fe5VarA.j;
    }

    public final boolean b(Context context) {
        zg5 zg5Var;
        fe5 fe5VarA = yg5.a().a(context);
        if (fe5VarA == null || !fe5VarA.i || a(context)) {
            return true;
        }
        if (!u50.a(fe5VarA)) {
            return false;
        }
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
        return defpackage.aa4.e(zg5Var2.c(), Boolean.TRUE);
    }
}
