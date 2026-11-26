package androidx.camera.camera2.pipe.core;

import android.os.Process;
import androidx.camera.camera2.pipe.core.AndroidThreads;
import defpackage.c9;
import defpackage.kt;
import defpackage.kv2;
import defpackage.lt;
import defpackage.ta8;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidThreads {
    public static final AndroidThreads INSTANCE = new AndroidThreads();
    private static final int[] NICE_VALUES = {19, 16, 13, 10, 0, -2, -4, -5, -6, -8};
    private static final ThreadFactory factory;

    static {
        ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        threadFactoryDefaultThreadFactory.getClass();
        factory = threadFactoryDefaultThreadFactory;
    }

    private AndroidThreads() {
    }

    private final int androidToJavaPriority(int i) {
        int length = NICE_VALUES.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i >= NICE_VALUES[i2]) {
                return i2 + 1;
            }
        }
        return 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread withAndroidPriority$lambda$0(final int i, ThreadFactory threadFactory, final Runnable runnable) {
        int iAndroidToJavaPriority = INSTANCE.androidToJavaPriority(i);
        Thread threadNewThread = threadFactory.newThread(new Runnable() { // from class: wk
            @Override // java.lang.Runnable
            public final void run() {
                AndroidThreads.withAndroidPriority$lambda$0$0(i, runnable);
            }
        });
        threadNewThread.getClass();
        threadNewThread.setPriority(iAndroidToJavaPriority);
        return threadNewThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void withAndroidPriority$lambda$0$0(int i, Runnable runnable) {
        Process.setThreadPriority(i);
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread withPrefix$lambda$0(ThreadFactory threadFactory, String str, lt ltVar, Runnable runnable) {
        Thread threadNewThread = threadFactory.newThread(runnable);
        threadNewThread.getClass();
        threadNewThread.setName(str + ta8.R(2, String.valueOf(ltVar.b())));
        return threadNewThread;
    }

    public final ExecutorService asCachedThreadPool(ThreadFactory threadFactory) {
        threadFactory.getClass();
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(threadFactory);
        executorServiceNewCachedThreadPool.getClass();
        return executorServiceNewCachedThreadPool;
    }

    public final ExecutorService asFixedSizeThreadPool(ThreadFactory threadFactory, int i) {
        threadFactory.getClass();
        if (i <= 0) {
            c9.f(kv2.b(i, "Threads (", ") must be > 0"));
            return null;
        }
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i, threadFactory);
        executorServiceNewFixedThreadPool.getClass();
        return executorServiceNewFixedThreadPool;
    }

    public final ScheduledExecutorService asScheduledThreadPool(ThreadFactory threadFactory, int i) {
        threadFactory.getClass();
        if (i <= 0) {
            c9.f(kv2.b(i, "Threads (", ") must be > 0"));
            return null;
        }
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(i, threadFactory);
        scheduledExecutorServiceNewScheduledThreadPool.getClass();
        return scheduledExecutorServiceNewScheduledThreadPool;
    }

    public final ThreadFactory getFactory() {
        return factory;
    }

    public final ThreadFactory withAndroidPriority(final ThreadFactory threadFactory, final int i) {
        threadFactory.getClass();
        return new ThreadFactory() { // from class: xk
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.withAndroidPriority$lambda$0(i, threadFactory, runnable);
            }
        };
    }

    public final ThreadFactory withPrefix(final ThreadFactory threadFactory, final String str) {
        threadFactory.getClass();
        str.getClass();
        final lt ltVarB = kt.b(0);
        return new ThreadFactory() { // from class: yk
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.withPrefix$lambda$0(threadFactory, str, ltVarB, runnable);
            }
        };
    }
}
