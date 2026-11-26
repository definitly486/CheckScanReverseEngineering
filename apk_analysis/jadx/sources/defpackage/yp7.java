package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class yp7 implements Executor {
    public static final Logger d = Logger.getLogger(yp7.class.getName());
    public boolean b;
    public ArrayDeque<Runnable> c;

    public final void a() {
        while (true) {
            Runnable runnablePoll = this.c.poll();
            if (runnablePoll == null) {
                return;
            }
            try {
                runnablePoll.run();
            } catch (Throwable th) {
                d.log(Level.SEVERE, "Exception while executing runnable " + runnablePoll, th);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o8.l(runnable, "'task' must not be null.");
        if (this.b) {
            ArrayDeque<Runnable> arrayDeque = this.c;
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque<>(4);
                this.c = arrayDeque;
            }
            arrayDeque.add(runnable);
            return;
        }
        this.b = true;
        try {
            runnable.run();
            if (this.c != null) {
                a();
            }
            this.b = false;
        } catch (Throwable th) {
            try {
                d.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            } finally {
                if (this.c != null) {
                    a();
                }
                this.b = false;
            }
        }
    }
}
