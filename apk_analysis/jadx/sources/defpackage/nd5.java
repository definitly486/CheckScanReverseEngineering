package defpackage;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class nd5 {

    public static class a extends v0 {
        public final ExecutorService b;

        public a(ExecutorService executorService) {
            executorService.getClass();
            this.b = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            return this.b.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.b.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.b.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.b.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.b.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.b.shutdownNow();
        }

        public final String toString() {
            return super.toString() + "[" + this.b + "]";
        }
    }

    public static Executor a(final Executor executor, final xh3.a aVar) {
        executor.getClass();
        return executor == jn2.INSTANCE ? executor : new Executor() { // from class: md5
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RejectedExecutionException e) {
                    aVar.m(e);
                }
            }
        };
    }

    public static final class b extends a implements xr4 {
        public final ScheduledExecutorService c;

        public static final class a<V> extends ij3.a<V> implements ScheduledFuture {
            public final ScheduledFuture<?> c;

            public a(l0 l0Var, ScheduledFuture scheduledFuture) {
                super(l0Var);
                this.c = scheduledFuture;
            }

            @Override // defpackage.hj3, java.util.concurrent.Future
            public final boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.c.cancel(z);
                }
                return zCancel;
            }

            @Override // java.lang.Comparable
            public final int compareTo(Delayed delayed) {
                return this.c.compareTo(delayed);
            }

            @Override // java.util.concurrent.Delayed
            public final long getDelay(TimeUnit timeUnit) {
                return this.c.getDelay(timeUnit);
            }
        }

        /* JADX INFO: renamed from: nd5$b$b, reason: collision with other inner class name */
        public static final class RunnableC0303b extends l0.f<Void> implements Runnable {
            public final Runnable i;

            public RunnableC0303b(Runnable runnable) {
                runnable.getClass();
                this.i = runnable;
            }

            @Override // defpackage.l0
            public final String k() {
                return "task=[" + this.i + "]";
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.i.run();
                } catch (Throwable th) {
                    m(th);
                    throw th;
                }
            }
        }

        public b(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.c = scheduledExecutorService;
        }

        @Override // defpackage.xr4, java.util.concurrent.ScheduledExecutorService
        public final a schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            n39 n39Var = new n39(Executors.callable(runnable, null));
            return new a(n39Var, this.c.schedule(n39Var, j, timeUnit));
        }

        @Override // defpackage.xr4, java.util.concurrent.ScheduledExecutorService
        public final a scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            RunnableC0303b runnableC0303b = new RunnableC0303b(runnable);
            return new a(runnableC0303b, this.c.scheduleAtFixedRate(runnableC0303b, j, j2, timeUnit));
        }

        @Override // defpackage.xr4, java.util.concurrent.ScheduledExecutorService
        public final a scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            RunnableC0303b runnableC0303b = new RunnableC0303b(runnable);
            return new a(runnableC0303b, this.c.scheduleWithFixedDelay(runnableC0303b, j, j2, timeUnit));
        }

        @Override // defpackage.xr4, java.util.concurrent.ScheduledExecutorService
        public final a schedule(Callable callable, long j, TimeUnit timeUnit) {
            n39 n39Var = new n39(callable);
            return new a(n39Var, this.c.schedule(n39Var, j, timeUnit));
        }
    }
}
