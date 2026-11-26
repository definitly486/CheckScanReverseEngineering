package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y94<T> extends AtomicReference<Runnable> implements Runnable {
    public static final b b = new b();
    public static final b c = new b();

    public static final class a extends AbstractOwnableSynchronizer implements Runnable {
        public final y94<?> b;

        public a(y94<?> y94Var) {
            this.b = y94Var;
        }

        public final void a(Thread thread) {
            setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public final void run() {
        }

        public final String toString() {
            return this.b.toString();
        }
    }

    public static final class b implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    public abstract void a(Throwable th);

    public abstract void b(T t);

    public final void d() {
        b bVar = c;
        b bVar2 = b;
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            a aVar = new a(this);
            aVar.a(Thread.currentThread());
            if (compareAndSet(runnable, aVar)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(bVar2) == bVar) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    public abstract boolean e();

    public abstract T f();

    public abstract String g();

    public final void i(Thread thread) {
        Runnable runnable = get();
        a aVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof a;
            b bVar = c;
            if (!z2 && runnable != bVar) {
                break;
            }
            if (z2) {
                aVar = (a) runnable;
            }
            i++;
            if (i <= 1000) {
                Thread.yield();
            } else if (runnable == bVar || compareAndSet(runnable, bVar)) {
                z = Thread.interrupted() || z;
                LockSupport.park(aVar);
            }
            runnable = get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        T tF = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean zE = e();
            b bVar = b;
            if (!zE) {
                try {
                    tF = f();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(threadCurrentThread, bVar)) {
                            i(threadCurrentThread);
                        }
                        if (zE) {
                            return;
                        }
                        a(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, bVar)) {
                            i(threadCurrentThread);
                        }
                        if (!zE) {
                            b(null);
                        }
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, bVar)) {
                i(threadCurrentThread);
            }
            if (zE) {
                return;
            }
            b(tF);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == b) {
            str = "running=[DONE]";
        } else if (runnable instanceof a) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        StringBuilder sbD = fh.d(str, ", ");
        sbD.append(g());
        return sbD.toString();
    }
}
