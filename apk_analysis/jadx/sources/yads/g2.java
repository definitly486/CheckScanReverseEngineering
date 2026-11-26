package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g2 {
    public static h2 a() {
        h2 h2Var;
        h2 h2Var2 = h2.c;
        if (h2Var2 != null) {
            return h2Var2;
        }
        synchronized (h2.b) {
            h2Var = h2.c;
            if (h2Var == null) {
                h2Var = new h2();
                h2.c = h2Var;
            }
        }
        return h2Var;
    }
}
