package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pt8 {
    public static final ThreadLocal<b13> a = new ThreadLocal<>();

    public static b13 a() {
        ThreadLocal<b13> threadLocal = a;
        b13 b13Var = threadLocal.get();
        if (b13Var != null) {
            return b13Var;
        }
        fk0 fk0Var = new fk0(Thread.currentThread());
        threadLocal.set(fk0Var);
        return fk0Var;
    }
}
