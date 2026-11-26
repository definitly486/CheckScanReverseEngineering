package defpackage;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class v13 extends u13 implements wk2 {
    public final Executor c;

    public v13(Executor executor) {
        Method method;
        this.c = executor;
        Method method2 = cv1.a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = cv1.a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // defpackage.wk2
    public final hp2 X(long j, Runnable runnable, o22 o22Var) {
        Executor executor = this.c;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                qb4.b(o22Var, pib.a("The task was rejected", e));
            }
        }
        return scheduledFutureSchedule != null ? new gp2(scheduledFutureSchedule) : kh2.k.X(j, runnable, o22Var);
    }

    @Override // defpackage.wk2
    public final void b(long j, c31 c31Var) {
        Executor executor = this.c;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            c67 c67Var = new c67(this, c31Var);
            o22 o22Var = c31Var.f;
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(c67Var, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                qb4.b(o22Var, pib.a("The task was rejected", e));
            }
        }
        if (scheduledFutureSchedule != null) {
            c31Var.w(new p21(scheduledFutureSchedule));
        } else {
            kh2.k.b(j, c31Var);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.c;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        try {
            this.c.execute(runnable);
        } catch (RejectedExecutionException e) {
            qb4.b(o22Var, pib.a("The task was rejected", e));
            oi2 oi2Var = qo2.a;
            sh2.c.dispatch(o22Var, runnable);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof v13) && ((v13) obj).c == this.c;
    }

    public final int hashCode() {
        return System.identityHashCode(this.c);
    }

    @Override // defpackage.u13
    public final Executor k0() {
        return this.c;
    }

    @Override // defpackage.r22
    public final String toString() {
        return this.c.toString();
    }
}
