package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.ti0;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class M9 implements IHandlerExecutor {
    public final Looper a;
    public final Handler b;
    public final HandlerThreadC1202qb c;

    public M9(HandlerThreadC1202qb handlerThreadC1202qb) {
        this(handlerThreadC1202qb, handlerThreadC1202qb.getLooper(), new Handler(handlerThreadC1202qb.getLooper()));
    }

    public static HandlerThreadC1202qb a(String str) {
        StringBuilder sbC = ti0.c(str, "-");
        sbC.append(Ld.a.incrementAndGet());
        HandlerThreadC1202qb handlerThreadC1202qb = new HandlerThreadC1202qb(sbC.toString());
        handlerThreadC1202qb.start();
        return handlerThreadC1202qb;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void executeDelayed(Runnable runnable, long j, TimeUnit timeUnit) {
        this.b.postDelayed(runnable, timeUnit.toMillis(j));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor
    public final Handler getHandler() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor
    public final Looper getLooper() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final boolean isRunning() {
        boolean z;
        HandlerThreadC1202qb handlerThreadC1202qb = this.c;
        synchronized (handlerThreadC1202qb) {
            z = handlerThreadC1202qb.a;
        }
        return z;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void remove(Runnable runnable) {
        this.b.removeCallbacks(runnable);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void removeAll() {
        this.b.removeCallbacksAndMessages(null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final void stopRunning() {
        HandlerThreadC1202qb handlerThreadC1202qb = this.c;
        synchronized (handlerThreadC1202qb) {
            handlerThreadC1202qb.a = false;
            handlerThreadC1202qb.interrupt();
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final <T> Future<T> submit(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        this.b.post(futureTask);
        return futureTask;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void executeDelayed(Runnable runnable, long j) {
        this.b.postDelayed(runnable, j);
    }

    public M9(String str) {
        this(a(str));
    }

    public M9(HandlerThreadC1202qb handlerThreadC1202qb, Looper looper, Handler handler) {
        this.c = handlerThreadC1202qb;
        this.a = looper;
        this.b = handler;
    }
}
