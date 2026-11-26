package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class o64 implements Callable<Void>, cp2 {
    public static final FutureTask<Void> g = new FutureTask<>(rm3.b, null);
    public final Runnable b;
    public final ExecutorService e;
    public Thread f;
    public final AtomicReference<Future<?>> d = new AtomicReference<>();
    public final AtomicReference<Future<?>> c = new AtomicReference<>();

    public o64(Runnable runnable, ScheduledExecutorService scheduledExecutorService) {
        this.b = runnable;
        this.e = scheduledExecutorService;
    }

    public final void a(Future<?> future) {
        while (true) {
            AtomicReference<Future<?>> atomicReference = this.d;
            Future<?> future2 = atomicReference.get();
            if (future2 == g) {
                future.cancel(this.f != Thread.currentThread());
                return;
            } else {
                while (!atomicReference.compareAndSet(future2, future)) {
                    if (atomicReference.get() != future2) {
                    }
                }
                return;
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public final Void call() {
        this.f = Thread.currentThread();
        try {
            this.b.run();
            Future<?> futureSubmit = this.e.submit(this);
            AtomicReference<Future<?>> atomicReference = this.c;
            loop0: while (true) {
                Future<?> future = atomicReference.get();
                if (future == g) {
                    futureSubmit.cancel(this.f != Thread.currentThread());
                    break;
                }
                do {
                    if (atomicReference.compareAndSet(future, futureSubmit)) {
                        break loop0;
                    }
                } while (atomicReference.get() == future);
            }
            this.f = null;
            return null;
        } catch (Throwable th) {
            this.f = null;
            d97.b(th);
            return null;
        }
    }

    @Override // defpackage.cp2
    public final void dispose() {
        AtomicReference<Future<?>> atomicReference = this.d;
        FutureTask<Void> futureTask = g;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f != Thread.currentThread());
        }
        Future<?> andSet2 = this.c.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f != Thread.currentThread());
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.d.get() == g;
    }
}
