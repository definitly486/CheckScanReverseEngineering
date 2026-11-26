package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class p2 {
    public final q2 a() {
        q2 q2Var;
        q2 q2Var2 = q2.c;
        if (q2Var2 != null) {
            return q2Var2;
        }
        synchronized (this) {
            q2Var = q2.c;
            if (q2Var == null) {
                q2Var = new q2();
                q2.c = q2Var;
            }
        }
        return q2Var;
    }
}
