package androidx.work;

import androidx.tracing.Trace;
import defpackage.aq5;
import defpackage.g02;
import defpackage.o22;
import defpackage.r22;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfigurationKt {
    public static final int DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor asExecutor(o22 o22Var) {
        g02 g02Var = o22Var != null ? (g02) o22Var.get(g02.a.b) : null;
        r22 r22Var = g02Var instanceof r22 ? (r22) g02Var : null;
        if (r22Var != null) {
            return aq5.a(r22Var);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor createDefaultExecutor(final boolean z) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            private final AtomicInteger threadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                runnable.getClass();
                return new Thread(runnable, (z ? "WM.task-" : "androidx.work-") + this.threadCount.incrementAndGet());
            }
        });
        executorServiceNewFixedThreadPool.getClass();
        return executorServiceNewFixedThreadPool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Tracer createDefaultTracer() {
        return new Tracer() { // from class: androidx.work.ConfigurationKt$createDefaultTracer$tracer$1
            @Override // androidx.work.Tracer
            public void beginAsyncSection(String str, int i) throws Throwable {
                str.getClass();
                Trace.beginAsyncSection(str, i);
            }

            @Override // androidx.work.Tracer
            public void beginSection(String str) {
                str.getClass();
                Trace.beginSection(str);
            }

            @Override // androidx.work.Tracer
            public void endAsyncSection(String str, int i) throws Throwable {
                str.getClass();
                Trace.endAsyncSection(str, i);
            }

            @Override // androidx.work.Tracer
            public void endSection() {
                Trace.endSection();
            }

            @Override // androidx.work.Tracer
            public boolean isEnabled() {
                return Trace.isEnabled();
            }
        };
    }
}
