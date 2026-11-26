package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ja4 extends he7 {
    public static final k97 d;
    public static final k97 e;
    public static final long f = Long.getLong("rx2.io-keep-alive-time", 60).longValue();
    public static final c g;
    public static final boolean h;
    public static final a i;
    public final AtomicReference<a> c;

    public static final class a implements Runnable {
        public final long b;
        public final ConcurrentLinkedQueue<c> c;
        public final fu1 d;
        public final ScheduledExecutorService e;
        public final ScheduledFuture f;
        public final ThreadFactory g;

        public a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            a aVar;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.b = nanos;
            this.c = new ConcurrentLinkedQueue<>();
            this.d = new fu1();
            this.g = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, ja4.e);
                aVar = this;
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(aVar, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                aVar = this;
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            aVar.e = scheduledExecutorServiceNewScheduledThreadPool;
            aVar.f = scheduledFutureScheduleWithFixedDelay;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ConcurrentLinkedQueue<c> concurrentLinkedQueue = this.c;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            long jNanoTime = System.nanoTime();
            for (c cVar : concurrentLinkedQueue) {
                if (cVar.d > jNanoTime) {
                    return;
                }
                if (concurrentLinkedQueue.remove(cVar)) {
                    this.d.c(cVar);
                }
            }
        }
    }

    public static final class b extends he7.c implements Runnable {
        public final a c;
        public final c d;
        public final AtomicBoolean e = new AtomicBoolean();
        public final fu1 b = new fu1();

        public b(a aVar) {
            c cVar;
            c cVar2;
            this.c = aVar;
            if (aVar.d.c) {
                cVar2 = ja4.g;
            } else {
                do {
                    if (aVar.c.isEmpty()) {
                        cVar = new c(aVar.g);
                        aVar.d.b(cVar);
                        break;
                    }
                    cVar = aVar.c.poll();
                } while (cVar == null);
                cVar2 = cVar;
            }
            this.d = cVar2;
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.b.c ? hx2.INSTANCE : this.d.d(runnable, j, timeUnit, this.b);
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.e.compareAndSet(false, true)) {
                this.b.dispose();
                if (ja4.h) {
                    this.d.d(this, 0L, TimeUnit.NANOSECONDS, null);
                    return;
                }
                a aVar = this.c;
                aVar.getClass();
                long jNanoTime = System.nanoTime() + aVar.b;
                c cVar = this.d;
                cVar.d = jNanoTime;
                aVar.c.offer(cVar);
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.e.get();
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = this.c;
            aVar.getClass();
            long jNanoTime = System.nanoTime() + aVar.b;
            c cVar = this.d;
            cVar.d = jNanoTime;
            aVar.c.offer(cVar);
        }
    }

    public static final class c extends on5 {
        public long d;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.d = 0L;
        }
    }

    static {
        c cVar = new c(new k97("RxCachedThreadSchedulerShutdown"));
        g = cVar;
        cVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        k97 k97Var = new k97("RxCachedThreadScheduler", iMax, false);
        d = k97Var;
        e = new k97("RxCachedWorkerPoolEvictor", iMax, false);
        h = Boolean.getBoolean("rx2.io-scheduled-release");
        a aVar = new a(0L, null, k97Var);
        i = aVar;
        aVar.d.dispose();
        ScheduledFuture scheduledFuture = aVar.f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = aVar.e;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public ja4() {
        a aVar = i;
        AtomicReference<a> atomicReference = new AtomicReference<>(aVar);
        this.c = atomicReference;
        a aVar2 = new a(f, TimeUnit.SECONDS, d);
        while (!atomicReference.compareAndSet(aVar, aVar2)) {
            if (atomicReference.get() != aVar) {
                aVar2.d.dispose();
                ScheduledFuture scheduledFuture = aVar2.f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                ScheduledExecutorService scheduledExecutorService = aVar2.e;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    return;
                }
                return;
            }
        }
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new b(this.c.get());
    }
}
