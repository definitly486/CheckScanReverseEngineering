package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class l8 {
    public final d9 a;
    public final e4 b;
    public final ah4 c;
    public final q84 d;
    public final k8 e;
    public final fe5 f;

    public l8(Context context, d9 d9Var, e4 e4Var, t5 t5Var, ah4 ah4Var, q84 q84Var) {
        zg5 zg5Var;
        k8 k8Var = new k8(t5Var);
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
        this.a = d9Var;
        this.b = e4Var;
        this.c = ah4Var;
        this.d = q84Var;
        this.e = k8Var;
        this.f = fe5VarA;
    }
}
