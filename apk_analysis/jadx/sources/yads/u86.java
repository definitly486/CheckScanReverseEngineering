package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class u86 {
    public final ws a;
    public final no5 b;
    public final m5 c;
    public final ia d;
    public final fe5 e;

    public u86(Context context) {
        zg5 zg5Var;
        ws wsVar = new ws(context);
        no5 no5Var = new no5();
        m5 m5Var = new m5();
        ia iaVar = new ia();
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
        this.a = wsVar;
        this.b = no5Var;
        this.c = m5Var;
        this.d = iaVar;
        this.e = fe5VarA;
    }
}
