package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ld {
    public final gd a;
    public final zg5 b;
    public final Context c;

    public ld(Context context) {
        zg5 zg5Var;
        gd gdVarA = hd.a(context);
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
        this.a = gdVarA;
        this.b = zg5Var2;
        Context applicationContext = context.getApplicationContext();
        this.c = applicationContext != null ? applicationContext : context;
    }
}
