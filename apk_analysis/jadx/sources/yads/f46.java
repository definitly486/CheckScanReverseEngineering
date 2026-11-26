package yads;

import defpackage.j59;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class f46 implements Thread.UncaughtExceptionHandler {
    public final q84 a;
    public final Thread.UncaughtExceptionHandler b;
    public final fe5 c;

    public f46(q84 q84Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, fe5 fe5Var) {
        this.a = q84Var;
        this.b = uncaughtExceptionHandler;
        this.c = fe5Var;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        try {
            Set set = this.c.r0;
            if (set == null) {
                set = defpackage.ox2.b;
            }
            Set set2 = cq5.a;
            if (cq5.a(th.getStackTrace(), set)) {
                q84 q84Var = this.a;
                if (q84Var.a != null) {
                    defpackage.av0.c(q84Var.c, null, null, new p84(q84Var, th, null), 3);
                }
            }
            if (this.c.q0 || (uncaughtExceptionHandler = this.b) == null) {
                return;
            }
        } catch (Throwable th2) {
            try {
                this.a.reportError("Failed to report uncaught exception", th2);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            if (this.c.q0 || (uncaughtExceptionHandler = this.b) == null) {
                return;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
