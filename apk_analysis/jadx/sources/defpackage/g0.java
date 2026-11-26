package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g0 extends AtomicReference<Future<?>> implements cp2 {
    public static final FutureTask<Void> d;
    public static final FutureTask<Void> e;
    public final Runnable b;
    public Thread c;

    static {
        rm3.f fVar = rm3.b;
        d = new FutureTask<>(fVar, null);
        e = new FutureTask<>(fVar, null);
    }

    public g0(Runnable runnable) {
        this.b = runnable;
    }

    public final void a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == d) {
                return;
            }
            if (future2 == e) {
                future.cancel(this.c != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // defpackage.cp2
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == d || future == (futureTask = e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.c != Thread.currentThread());
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == d || future == e;
    }
}
