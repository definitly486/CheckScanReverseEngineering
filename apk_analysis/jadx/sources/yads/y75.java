package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class y75 {
    public static z75 a() {
        z75 z75Var;
        z75 z75Var2 = z75.b;
        if (z75Var2 != null) {
            return z75Var2;
        }
        synchronized (z75.a) {
            z75Var = z75.b;
            if (z75Var == null) {
                z75Var = new z75();
                z75.b = z75Var;
            }
        }
        return z75Var;
    }
}
