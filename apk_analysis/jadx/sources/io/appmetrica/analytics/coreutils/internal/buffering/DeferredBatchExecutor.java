package io.appmetrica.analytics.coreutils.internal.buffering;

import defpackage.gp;
import defpackage.jh2;
import defpackage.kc2;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class DeferredBatchExecutor<T> {
    public static final Companion Companion = new Companion(null);
    private final IHandlerExecutor a;
    private final TaskBuffer b;
    private final BatchProcessor c;
    private final long d;
    private Runnable e;

    public /* synthetic */ DeferredBatchExecutor(IHandlerExecutor iHandlerExecutor, TaskBuffer taskBuffer, BatchProcessor batchProcessor, long j, String str, int i, jh2 jh2Var) {
        this(iHandlerExecutor, taskBuffer, batchProcessor, (i & 8) != 0 ? 1000L : j, (i & 16) != 0 ? "[DeferredBatchExecutor]" : str);
    }

    private final void a() {
        if (this.b.isEmpty()) {
            this.e = null;
            return;
        }
        List<T> andClear = this.b.getAndClear();
        this.e = null;
        try {
            this.c.processBatch(andClear);
        } catch (Exception unused) {
        }
    }

    private final void b() {
        kc2 kc2Var = new kc2(this, 1);
        this.e = kc2Var;
        this.a.executeDelayed(kc2Var, this.d);
    }

    public static /* synthetic */ void submit$default(DeferredBatchExecutor deferredBatchExecutor, Object obj, boolean z, int i, Object obj2) {
        if ((i & 2) != 0) {
            z = false;
        }
        deferredBatchExecutor.submit(obj, z);
    }

    public final synchronized void flush() {
        try {
            Runnable runnable = this.e;
            if (runnable != null) {
                this.a.remove(runnable);
                this.e = null;
            }
            if (!this.b.isEmpty()) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void flushAsync() {
        this.a.execute(new gp(this, 2));
    }

    public final synchronized void submit(T t, boolean z) {
        try {
            this.b.add(t);
            Runnable runnable = this.e;
            if (z) {
                if (runnable != null) {
                    this.a.remove(runnable);
                    this.e = null;
                }
                a();
            } else if (runnable == null) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(DeferredBatchExecutor deferredBatchExecutor) {
        synchronized (deferredBatchExecutor) {
            deferredBatchExecutor.a();
        }
    }

    public DeferredBatchExecutor(IHandlerExecutor iHandlerExecutor, TaskBuffer<T> taskBuffer, BatchProcessor<T> batchProcessor, long j, String str) {
        this.a = iHandlerExecutor;
        this.b = taskBuffer;
        this.c = batchProcessor;
        this.d = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DeferredBatchExecutor deferredBatchExecutor) {
        deferredBatchExecutor.flush();
    }
}
