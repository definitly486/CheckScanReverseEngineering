package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class y94 {
    public static z94 a() {
        z94 z94Var;
        z94 z94Var2 = z94.b;
        if (z94Var2 != null) {
            return z94Var2;
        }
        synchronized (z94.c) {
            z94Var = z94.b;
            if (z94Var == null) {
                z94Var = new z94();
                z94.b = z94Var;
            }
        }
        return z94Var;
    }
}
