package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class g5 {
    public final vf4 a;
    public final f5 b;

    public g5(vf4 vf4Var) {
        f5 f5Var;
        f5 f5Var2 = f5.d;
        if (f5Var2 == null) {
            synchronized (f5.c) {
                f5Var = f5.d;
                if (f5Var == null) {
                    f5Var = new f5();
                    f5.d = f5Var;
                }
            }
            f5Var2 = f5Var;
        }
        this.a = vf4Var;
        this.b = f5Var2;
    }
}
