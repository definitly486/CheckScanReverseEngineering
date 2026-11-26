package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class oq7 implements Executor, Runnable {
    public static final Logger e = Logger.getLogger(oq7.class.getName());
    public static final a f;
    public final Executor b;
    public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    public volatile int d = 0;

    public static abstract class a {
        public abstract boolean a(oq7 oq7Var);

        public abstract void b(oq7 oq7Var);
    }

    public static final class b extends a {
        public final AtomicIntegerFieldUpdater<oq7> a;

        public b(AtomicIntegerFieldUpdater<oq7> atomicIntegerFieldUpdater) {
            this.a = atomicIntegerFieldUpdater;
        }

        @Override // oq7.a
        public final boolean a(oq7 oq7Var) {
            return this.a.compareAndSet(oq7Var, 0, -1);
        }

        @Override // oq7.a
        public final void b(oq7 oq7Var) {
            this.a.set(oq7Var, 0);
        }
    }

    public static final class c extends a {
        @Override // oq7.a
        public final boolean a(oq7 oq7Var) {
            synchronized (oq7Var) {
                try {
                    if (oq7Var.d != 0) {
                        return false;
                    }
                    oq7Var.d = -1;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // oq7.a
        public final void b(oq7 oq7Var) {
            synchronized (oq7Var) {
                oq7Var.d = 0;
            }
        }
    }

    static {
        a cVar;
        try {
            cVar = new b(AtomicIntegerFieldUpdater.newUpdater(oq7.class, "d"));
        } catch (Throwable th) {
            e.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            cVar = new c();
        }
        f = cVar;
    }

    public oq7(Executor executor) {
        o8.l(executor, "'executor' must not be null.");
        this.b = executor;
    }

    public final void a(Runnable runnable) {
        a aVar = f;
        if (aVar.a(this)) {
            try {
                this.b.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    this.c.remove(runnable);
                }
                aVar.b(this);
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o8.l(runnable, "'r' must not be null.");
        this.c.add(runnable);
        a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = f;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.c;
        while (true) {
            try {
                Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                if (runnable == null) {
                    break;
                }
                try {
                    runnable.run();
                } catch (RuntimeException e2) {
                    e.log(Level.SEVERE, "Exception while executing runnable " + runnable, (Throwable) e2);
                }
            } catch (Throwable th) {
                aVar.b(this);
                throw th;
            }
        }
        aVar.b(this);
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        a(null);
    }
}
