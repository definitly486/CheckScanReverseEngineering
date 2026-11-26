package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class vu4 implements Runnable {
    public static final Logger c = Logger.getLogger(vu4.class.getName());
    public final Runnable b;

    public vu4(Runnable runnable) {
        o8.l(runnable, "task");
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.b;
        try {
            runnable.run();
        } catch (Throwable th) {
            c.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            Object obj = xt8.a;
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            xg.d(th);
        }
    }

    public final String toString() {
        return "LogExceptionRunnable(" + this.b + ")";
    }
}
