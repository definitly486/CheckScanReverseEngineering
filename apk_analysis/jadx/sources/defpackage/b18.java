package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class b18 extends he7 {
    public static final k97 d;
    public static final ScheduledExecutorService e;
    public final AtomicReference<ScheduledExecutorService> c;

    public static final class a extends he7.c {
        public final ScheduledExecutorService b;
        public final fu1 c = new fu1();
        public volatile boolean d;

        public a(ScheduledExecutorService scheduledExecutorService) {
            this.b = scheduledExecutorService;
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.d) {
                return hx2.INSTANCE;
            }
            ge7 ge7Var = new ge7(runnable, this.c);
            this.c.b(ge7Var);
            ScheduledExecutorService scheduledExecutorService = this.b;
            try {
                ge7Var.a(j <= 0 ? scheduledExecutorService.submit((Callable) ge7Var) : scheduledExecutorService.schedule((Callable) ge7Var, j, timeUnit));
                return ge7Var;
            } catch (RejectedExecutionException e) {
                dispose();
                d97.b(e);
                return hx2.INSTANCE;
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d;
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        e = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        d = new k97("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public b18() {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.c = atomicReference;
        boolean z = ke7.a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, d);
        if (ke7.a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            ke7.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new a(this.c.get());
    }

    @Override // defpackage.he7
    public final cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        fe7 fe7Var = new fe7(runnable);
        AtomicReference<ScheduledExecutorService> atomicReference = this.c;
        try {
            fe7Var.a(j <= 0 ? atomicReference.get().submit(fe7Var) : atomicReference.get().schedule(fe7Var, j, timeUnit));
            return fe7Var;
        } catch (RejectedExecutionException e2) {
            d97.b(e2);
            return hx2.INSTANCE;
        }
    }

    @Override // defpackage.he7
    public final cp2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        AtomicReference<ScheduledExecutorService> atomicReference = this.c;
        if (j2 > 0) {
            ee7 ee7Var = new ee7(runnable);
            try {
                ee7Var.a(atomicReference.get().scheduleAtFixedRate(ee7Var, j, j2, timeUnit));
                return ee7Var;
            } catch (RejectedExecutionException e2) {
                d97.b(e2);
                return hx2.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = atomicReference.get();
        o64 o64Var = new o64(runnable, scheduledExecutorService);
        try {
            o64Var.a(j <= 0 ? scheduledExecutorService.submit(o64Var) : scheduledExecutorService.schedule(o64Var, j, timeUnit));
            return o64Var;
        } catch (RejectedExecutionException e3) {
            d97.b(e3);
            return hx2.INSTANCE;
        }
    }
}
