package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class uu1 extends he7 {
    public static final b d;
    public static final k97 e;
    public static final int f;
    public static final c g;
    public final AtomicReference<b> c;

    public static final class a extends he7.c {
        public final cr4 b;
        public final fu1 c;
        public final cr4 d;
        public final c e;
        public volatile boolean f;

        public a(c cVar) {
            this.e = cVar;
            cr4 cr4Var = new cr4();
            this.b = cr4Var;
            fu1 fu1Var = new fu1();
            this.c = fu1Var;
            cr4 cr4Var2 = new cr4();
            this.d = cr4Var2;
            cr4Var2.b(cr4Var);
            cr4Var2.b(fu1Var);
        }

        @Override // he7.c
        public final cp2 a(Runnable runnable) {
            return this.f ? hx2.INSTANCE : this.e.d(runnable, 0L, TimeUnit.MILLISECONDS, this.b);
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.f ? hx2.INSTANCE : this.e.d(runnable, j, timeUnit, this.c);
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.d.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.f;
        }
    }

    public static final class b {
        public final int a;
        public final c[] b;
        public long c;

        public b(ThreadFactory threadFactory, int i) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(threadFactory);
            }
        }

        public final c a() {
            int i = this.a;
            if (i == 0) {
                return uu1.g;
            }
            long j = this.c;
            this.c = 1 + j;
            return this.b[(int) (j % ((long) i))];
        }
    }

    public static final class c extends on5 {
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        f = iAvailableProcessors;
        c cVar = new c(new k97("RxComputationShutdown"));
        g = cVar;
        cVar.dispose();
        k97 k97Var = new k97("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        e = k97Var;
        b bVar = new b(k97Var, 0);
        d = bVar;
        for (c cVar2 : bVar.b) {
            cVar2.dispose();
        }
    }

    public uu1() {
        b bVar = d;
        AtomicReference<b> atomicReference = new AtomicReference<>(bVar);
        this.c = atomicReference;
        b bVar2 = new b(e, f);
        while (!atomicReference.compareAndSet(bVar, bVar2)) {
            if (atomicReference.get() != bVar) {
                for (c cVar : bVar2.b) {
                    cVar.dispose();
                }
                return;
            }
        }
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new a(this.c.get().a());
    }

    @Override // defpackage.he7
    public final cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        c cVarA = this.c.get().a();
        cVarA.getClass();
        fe7 fe7Var = new fe7(runnable);
        ScheduledExecutorService scheduledExecutorService = cVarA.b;
        try {
            fe7Var.a(j <= 0 ? scheduledExecutorService.submit(fe7Var) : scheduledExecutorService.schedule(fe7Var, j, timeUnit));
            return fe7Var;
        } catch (RejectedExecutionException e2) {
            d97.b(e2);
            return hx2.INSTANCE;
        }
    }

    @Override // defpackage.he7
    public final cp2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c cVarA = this.c.get().a();
        ScheduledExecutorService scheduledExecutorService = cVarA.b;
        if (j2 <= 0) {
            o64 o64Var = new o64(runnable, scheduledExecutorService);
            try {
                o64Var.a(j <= 0 ? scheduledExecutorService.submit(o64Var) : scheduledExecutorService.schedule(o64Var, j, timeUnit));
                return o64Var;
            } catch (RejectedExecutionException e2) {
                d97.b(e2);
                return hx2.INSTANCE;
            }
        }
        ee7 ee7Var = new ee7(runnable);
        try {
            ee7Var.a(cVarA.b.scheduleAtFixedRate(ee7Var, j, j2, timeUnit));
            return ee7Var;
        } catch (RejectedExecutionException e3) {
            d97.b(e3);
            return hx2.INSTANCE;
        }
    }
}
