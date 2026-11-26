package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class zp2 {
    public final e4 a;
    public final bf5 b;
    public final d9 c;
    public final zt3 d;
    public final fe5 e;
    public final Context f;

    public zp2(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var) {
        zg5 zg5Var;
        zt3 zt3Var = new zt3();
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
        this.a = e4Var;
        this.b = bf5Var;
        this.c = d9Var;
        this.d = zt3Var;
        this.e = fe5VarA;
        this.f = context.getApplicationContext();
    }
}
