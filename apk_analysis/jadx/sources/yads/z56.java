package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class z56 {
    public final zg5 a;

    public z56() {
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
        this.a = zg5Var2;
    }
}
