package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class nt8 extends ky1.b {
    public static final Logger a = Logger.getLogger(nt8.class.getName());
    public static final ThreadLocal<ky1> b = new ThreadLocal<>();

    @Override // ky1.b
    public final ky1 a() {
        ky1 ky1Var = b.get();
        return ky1Var == null ? ky1.b : ky1Var;
    }

    @Override // ky1.b
    public final void b(ky1 ky1Var, ky1 ky1Var2) {
        if (a() != ky1Var) {
            a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        ky1 ky1Var3 = ky1.b;
        ThreadLocal<ky1> threadLocal = b;
        if (ky1Var2 != ky1Var3) {
            threadLocal.set(ky1Var2);
        } else {
            threadLocal.set(null);
        }
    }

    @Override // ky1.b
    public final ky1 c(ky1 ky1Var) {
        ky1 ky1VarA = a();
        b.set(ky1Var);
        return ky1VarA;
    }
}
