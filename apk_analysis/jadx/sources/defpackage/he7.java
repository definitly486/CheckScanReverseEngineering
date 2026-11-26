package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public abstract class he7 {
    public static final boolean a = Boolean.getBoolean("rx2.scheduler.use-nanotime");
    public static final long b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    public static final class a implements cp2, Runnable {
        public final Runnable b;
        public final c c;
        public Thread d;

        public a(Runnable runnable, c cVar) {
            this.b = runnable;
            this.c = cVar;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.d == Thread.currentThread()) {
                c cVar = this.c;
                if (cVar instanceof on5) {
                    on5 on5Var = (on5) cVar;
                    if (on5Var.c) {
                        return;
                    }
                    on5Var.c = true;
                    on5Var.b.shutdown();
                    return;
                }
            }
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.d = Thread.currentThread();
            try {
                this.b.run();
            } finally {
                dispose();
                this.d = null;
            }
        }
    }

    public static final class b implements cp2, Runnable {
        public final Runnable b;
        public final c c;
        public volatile boolean d;

        public b(Runnable runnable, c cVar) {
            this.b = runnable;
            this.c = cVar;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d = true;
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.d) {
                return;
            }
            try {
                this.b.run();
            } catch (Throwable th) {
                m13.d(th);
                this.c.dispose();
                throw k13.d(th);
            }
        }
    }

    public static abstract class c implements cp2 {

        public final class a implements Runnable {
            public final Runnable b;
            public final kp7 c;
            public final long d;
            public long e;
            public long f;
            public long g;

            public a(long j, Runnable runnable, long j2, kp7 kp7Var, long j3) {
                this.b = runnable;
                this.c = kp7Var;
                this.d = j3;
                this.f = j2;
                this.g = j;
            }

            @Override // java.lang.Runnable
            public final void run() {
                long j;
                this.b.run();
                kp7 kp7Var = this.c;
                if (kp7Var.isDisposed()) {
                    return;
                }
                c cVar = c.this;
                cVar.getClass();
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jA = he7.a(timeUnit);
                long j2 = he7.b;
                long j3 = jA + j2;
                long j4 = this.f;
                long j5 = this.d;
                if (j3 < j4 || jA >= j4 + j5 + j2) {
                    j = jA + j5;
                    long j6 = this.e + 1;
                    this.e = j6;
                    this.g = j - (j5 * j6);
                } else {
                    long j7 = this.g;
                    long j8 = this.e + 1;
                    this.e = j8;
                    j = (j8 * j5) + j7;
                }
                this.f = jA;
                ip2.e(kp7Var, cVar.b(this, j - jA, timeUnit));
            }
        }

        public cp2 a(Runnable runnable) {
            return b(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract cp2 b(Runnable runnable, long j, TimeUnit timeUnit);

        public final cp2 c(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            kp7 kp7Var = new kp7();
            kp7 kp7Var2 = new kp7(kp7Var);
            long nanos = timeUnit.toNanos(j2);
            long jA = he7.a(TimeUnit.NANOSECONDS);
            cp2 cp2VarB = b(new a(timeUnit.toNanos(j) + jA, runnable, jA, kp7Var2, nanos), j, timeUnit);
            if (cp2VarB == hx2.INSTANCE) {
                return cp2VarB;
            }
            ip2.e(kp7Var, cp2VarB);
            return kp7Var2;
        }
    }

    public static long a(TimeUnit timeUnit) {
        return !a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract c b();

    public cp2 c(Runnable runnable) {
        return d(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        c cVarB = b();
        a aVar = new a(runnable, cVarB);
        cVarB.b(aVar, j, timeUnit);
        return aVar;
    }

    public cp2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c cVarB = b();
        b bVar = new b(runnable, cVarB);
        cp2 cp2VarC = cVarB.c(bVar, j, j2, timeUnit);
        return cp2VarC == hx2.INSTANCE ? cp2VarC : bVar;
    }
}
