package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class lh4 {
    public final Context a;
    public final ae4 b;
    public final zg5 c;

    public lh4(Context context, ae4 ae4Var, yh4 yh4Var) {
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
        this.a = context;
        this.b = ae4Var;
        this.c = zg5Var2;
    }
}
