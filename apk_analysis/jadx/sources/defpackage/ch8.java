package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ch8 implements Executor {
    public final Thread.UncaughtExceptionHandler b;
    public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    public final AtomicReference<Thread> d = new AtomicReference<>();

    public class a implements Runnable {
        public final /* synthetic */ b b;
        public final /* synthetic */ Runnable c;

        public a(b bVar, Runnable runnable) {
            this.b = bVar;
            this.c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ch8.this.execute(this.b);
        }

        public final String toString() {
            return this.c.toString() + "(scheduled in SynchronizationContext)";
        }
    }

    public static class b implements Runnable {
        public final Runnable b;
        public boolean c;
        public boolean d;

        public b(Runnable runnable) {
            this.b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.c) {
                return;
            }
            this.d = true;
            this.b.run();
        }
    }

    public static final class c {
        public final b a;
        public final ScheduledFuture<?> b;

        public c(b bVar, ScheduledFuture<?> scheduledFuture) {
            this.a = bVar;
            o8.l(scheduledFuture, "future");
            this.b = scheduledFuture;
        }

        public final void a() {
            this.a.c = true;
            this.b.cancel(false);
        }
    }

    public ch8(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.b = uncaughtExceptionHandler;
    }

    public final void a() {
        AtomicReference<Thread> atomicReference;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.c;
        do {
            Thread threadCurrentThread = Thread.currentThread();
            do {
                atomicReference = this.d;
                if (atomicReference.compareAndSet(null, threadCurrentThread)) {
                    while (true) {
                        try {
                            Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                            if (runnable == null) {
                                break;
                            }
                            try {
                                runnable.run();
                            } catch (Throwable th) {
                                this.b.uncaughtException(Thread.currentThread(), th);
                            }
                        } catch (Throwable th2) {
                            atomicReference.set(null);
                            throw th2;
                        }
                    }
                    atomicReference.set(null);
                }
            } while (atomicReference.get() == null);
            return;
        } while (!concurrentLinkedQueue.isEmpty());
    }

    public final void b(Runnable runnable) {
        o8.l(runnable, "runnable is null");
        this.c.add(runnable);
    }

    public final c c(Runnable runnable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        b bVar = new b(runnable);
        return new c(bVar, scheduledExecutorService.schedule(new a(bVar, runnable), j, timeUnit));
    }

    public final void d() {
        o8.s(Thread.currentThread() == this.d.get(), "Not called from the SynchronizationContext");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable);
        a();
    }
}
