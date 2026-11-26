package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class y56 {
    public final c66 a;
    public final zg5 b;
    public final m96 c;
    public final x56 d;
    public final Context e;

    public y56(Context context) {
        zg5 zg5Var;
        c66 c66Var = new c66(context);
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
        m96 m96Var = new m96();
        x56 x56Var = new x56();
        this.a = c66Var;
        this.b = zg5Var2;
        this.c = m96Var;
        this.d = x56Var;
        this.e = context.getApplicationContext();
    }
}
