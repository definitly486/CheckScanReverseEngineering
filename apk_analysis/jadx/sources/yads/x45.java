package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class x45 {
    public final y45 a() {
        y45 y45Var;
        y45 y45Var2 = y45.d;
        if (y45Var2 != null) {
            return y45Var2;
        }
        synchronized (this) {
            y45Var = y45.d;
            if (y45Var == null) {
                y45Var = new y45();
                y45.d = y45Var;
            }
        }
        return y45Var;
    }
}
