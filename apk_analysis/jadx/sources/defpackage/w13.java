package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class w13 extends he7 {
    public static final he7 d = ne7.a;
    public final Executor c;

    public final class a implements Runnable {
        public final b b;

        public a(b bVar) {
            this.b = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b bVar = this.b;
            ip2.e(bVar.c, w13.this.c(bVar));
        }
    }

    public static final class b extends AtomicReference<Runnable> implements Runnable, cp2 {
        public final kp7 b;
        public final kp7 c;

        public b(Runnable runnable) {
            super(runnable);
            this.b = new kp7();
            this.c = new kp7();
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (getAndSet(null) != null) {
                ip2.a(this.b);
                ip2.a(this.c);
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            kp7 kp7Var = this.c;
            kp7 kp7Var2 = this.b;
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    kp7Var2.lazySet(ip2.DISPOSED);
                } finally {
                    lazySet(null);
                    kp7Var2.lazySet(ip2.DISPOSED);
                    kp7Var.lazySet(ip2.DISPOSED);
                }
            }
        }
    }

    public static final class c extends he7.c implements Runnable {
        public final Executor b;
        public volatile boolean d;
        public final AtomicInteger e = new AtomicInteger();
        public final fu1 f = new fu1();
        public final bf5<Runnable> c = new bf5<>();

        public static final class a extends AtomicBoolean implements Runnable, cp2 {
            public final Runnable b;

            public a(Runnable runnable) {
                this.b = runnable;
            }

            @Override // defpackage.cp2
            public final void dispose() {
                lazySet(true);
            }

            @Override // defpackage.cp2
            public final boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (get()) {
                    return;
                }
                try {
                    this.b.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        public final class b implements Runnable {
            public final kp7 b;
            public final Runnable c;

            public b(kp7 kp7Var, Runnable runnable) {
                this.b = kp7Var;
                this.c = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ip2.e(this.b, c.this.a(this.c));
            }
        }

        public c(Executor executor) {
            this.b = executor;
        }

        @Override // he7.c
        public final cp2 a(Runnable runnable) {
            if (this.d) {
                return hx2.INSTANCE;
            }
            a aVar = new a(runnable);
            this.c.offer(aVar);
            if (this.e.getAndIncrement() != 0) {
                return aVar;
            }
            try {
                this.b.execute(this);
                return aVar;
            } catch (RejectedExecutionException e) {
                this.d = true;
                this.c.clear();
                d97.b(e);
                return hx2.INSTANCE;
            }
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return a(runnable);
            }
            if (this.d) {
                return hx2.INSTANCE;
            }
            kp7 kp7Var = new kp7();
            kp7 kp7Var2 = new kp7(kp7Var);
            ge7 ge7Var = new ge7(new b(kp7Var2, runnable), this.f);
            this.f.b(ge7Var);
            Executor executor = this.b;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    ge7Var.a(((ScheduledExecutorService) executor).schedule((Callable) ge7Var, j, timeUnit));
                } catch (RejectedExecutionException e) {
                    this.d = true;
                    d97.b(e);
                    return hx2.INSTANCE;
                }
            } else {
                ge7Var.a(new lp2(w13.d.d(ge7Var, j, timeUnit)));
            }
            ip2.e(kp7Var, ge7Var);
            return kp7Var2;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.f.dispose();
            if (this.e.getAndIncrement() == 0) {
                this.c.clear();
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            bf5<Runnable> bf5Var = this.c;
            int iAddAndGet = 1;
            while (!this.d) {
                while (true) {
                    Runnable runnablePoll = bf5Var.poll();
                    if (runnablePoll == null) {
                        break;
                    }
                    runnablePoll.run();
                    if (this.d) {
                        bf5Var.clear();
                        return;
                    }
                }
                if (this.d) {
                    bf5Var.clear();
                    return;
                } else {
                    iAddAndGet = this.e.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            bf5Var.clear();
        }
    }

    public w13(Executor executor) {
        this.c = executor;
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new c(this.c);
    }

    @Override // defpackage.he7
    public final cp2 c(Runnable runnable) {
        Executor executor = this.c;
        try {
            if (executor instanceof ExecutorService) {
                fe7 fe7Var = new fe7(runnable);
                fe7Var.a(((ExecutorService) executor).submit(fe7Var));
                return fe7Var;
            }
            c.a aVar = new c.a(runnable);
            executor.execute(aVar);
            return aVar;
        } catch (RejectedExecutionException e) {
            d97.b(e);
            return hx2.INSTANCE;
        }
    }

    @Override // defpackage.he7
    public final cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        Executor executor = this.c;
        if (!(executor instanceof ScheduledExecutorService)) {
            b bVar = new b(runnable);
            ip2.e(bVar.b, d.d(new a(bVar), j, timeUnit));
            return bVar;
        }
        try {
            fe7 fe7Var = new fe7(runnable);
            fe7Var.a(((ScheduledExecutorService) executor).schedule(fe7Var, j, timeUnit));
            return fe7Var;
        } catch (RejectedExecutionException e) {
            d97.b(e);
            return hx2.INSTANCE;
        }
    }

    @Override // defpackage.he7
    public final cp2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Executor executor = this.c;
        if (!(executor instanceof ScheduledExecutorService)) {
            return super.e(runnable, j, j2, timeUnit);
        }
        try {
            ee7 ee7Var = new ee7(runnable);
            ee7Var.a(((ScheduledExecutorService) executor).scheduleAtFixedRate(ee7Var, j, j2, timeUnit));
            return ee7Var;
        } catch (RejectedExecutionException e) {
            d97.b(e);
            return hx2.INSTANCE;
        }
    }
}
