package defpackage;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class io8 implements Runnable {
    public final /* synthetic */ ho8 b;

    public io8(ho8 ho8Var) {
        this.b = ho8Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jl8 jl8VarB;
        long jNanoTime;
        while (true) {
            ho8 ho8Var = this.b;
            synchronized (ho8Var) {
                jl8VarB = ho8Var.b();
            }
            if (jl8VarB == null) {
                return;
            }
            do8 do8Var = jl8VarB.c;
            do8Var.getClass();
            ho8 ho8Var2 = this.b;
            boolean zIsLoggable = ho8.i.isLoggable(Level.FINE);
            if (zIsLoggable) {
                jNanoTime = System.nanoTime();
                ly1.e(jl8VarB, do8Var, "starting");
            } else {
                jNanoTime = -1;
            }
            try {
                ho8Var2.e(jl8VarB);
                try {
                    j59 j59Var = j59.a;
                    if (zIsLoggable) {
                        ly1.e(jl8VarB, do8Var, "finished run in ".concat(ly1.b(System.nanoTime() - jNanoTime)));
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        ly1.e(jl8VarB, do8Var, "failed a run in ".concat(ly1.b(System.nanoTime() - jNanoTime)));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                ho8Var2.a.a(this);
                throw th2;
            }
        }
    }
}
