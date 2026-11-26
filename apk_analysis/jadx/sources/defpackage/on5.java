package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class on5 extends he7.c {
    public final ScheduledExecutorService b;
    public volatile boolean c;

    public on5(ThreadFactory threadFactory) {
        boolean z = ke7.a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (ke7.a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            ke7.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.b = scheduledExecutorServiceNewScheduledThreadPool;
    }

    @Override // he7.c
    public final cp2 a(Runnable runnable) {
        return b(runnable, 0L, null);
    }

    @Override // he7.c
    public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.c ? hx2.INSTANCE : d(runnable, j, timeUnit, null);
    }

    public final ge7 d(Runnable runnable, long j, TimeUnit timeUnit, fp2 fp2Var) {
        ge7 ge7Var = new ge7(runnable, fp2Var);
        if (fp2Var != null && !fp2Var.b(ge7Var)) {
            return ge7Var;
        }
        ScheduledExecutorService scheduledExecutorService = this.b;
        try {
            ge7Var.a(j <= 0 ? scheduledExecutorService.submit((Callable) ge7Var) : scheduledExecutorService.schedule((Callable) ge7Var, j, timeUnit));
            return ge7Var;
        } catch (RejectedExecutionException e) {
            if (fp2Var != null) {
                fp2Var.c(ge7Var);
            }
            d97.b(e);
            return ge7Var;
        }
    }

    @Override // defpackage.cp2
    public final void dispose() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.shutdownNow();
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.c;
    }
}
