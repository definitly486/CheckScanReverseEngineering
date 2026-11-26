package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class x80 {
    public final ga5 a;

    public x80(Context context, do6 do6Var) {
        zg5 zg5Var;
        Context applicationContext = context.getApplicationContext();
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
        fe5 fe5VarA = zg5Var2.a(applicationContext);
        this.a = fe5VarA != null ? fe5VarA.I : false ? new ox(applicationContext, do6Var) : new ks(applicationContext, do6Var);
        s1.a(context);
    }
}
