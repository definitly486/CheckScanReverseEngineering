package androidx.camera.camera2.pipe.config;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.AndroidThreads;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import defpackage.aq5;
import defpackage.ed0;
import defpackage.gt8;
import defpackage.ht8;
import defpackage.jd8;
import defpackage.lh;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.o22;
import defpackage.p14;
import defpackage.ph;
import defpackage.r07;
import defpackage.r22;
import defpackage.ul;
import defpackage.v77;
import defpackage.w22;
import defpackage.y22;
import defpackage.z22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadConfigModule {
    private final int backgroundThreadCount;
    private final int cameraThreadPriority;
    private final int defaultThreadPriority;
    private final int lightweightThreadCount;
    private final CameraPipe.ThreadConfig threadConfig;

    public ThreadConfigModule(CameraPipe.ThreadConfig threadConfig) {
        threadConfig.getClass();
        this.threadConfig = threadConfig;
        this.lightweightThreadCount = Math.max(4, Runtime.getRuntime().availableProcessors() - 2);
        this.backgroundThreadCount = 4;
        this.cameraThreadPriority = -3;
        this.defaultThreadPriority = -1;
    }

    private final Threads provideTestOnlyThreads(r22 r22Var, y22 y22Var) {
        Executor executorA = aq5.a(r22Var);
        return new Threads(y22Var, y22Var, executorA, r22Var, executorA, r22Var, executorA, r22Var, new p14(this, 3), new v77(executorA, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler provideTestOnlyThreads$lambda$0(ThreadConfigModule threadConfigModule) {
        HandlerThread handlerThread = new HandlerThread("CXCP-Camera-H", threadConfigModule.cameraThreadPriority);
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor provideTestOnlyThreads$lambda$1(Executor executor) {
        return executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$3(List list) throws InterruptedException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ExecutorService) it.next()).shutdownNow();
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((ExecutorService) it2.next()).awaitTermination(1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler provideThreads$lambda$4(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
        if (threadConfigModule.threadConfig.getDefaultCameraHandler() != null) {
            return threadConfigModule.threadConfig.getDefaultCameraHandler();
        }
        HandlerThread handlerThread = new HandlerThread("CXCP-Camera-H", threadConfigModule.cameraThreadPriority);
        handlerThread.start();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new ed0(handlerThread, 4));
        return new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$4$1(HandlerThread handlerThread) throws InterruptedException {
        handlerThread.quit();
        handlerThread.join(1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor provideThreads$lambda$5(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
        if (threadConfigModule.threadConfig.getDefaultCameraExecutor() != null) {
            return threadConfigModule.threadConfig.getDefaultCameraExecutor();
        }
        AndroidThreads androidThreads = AndroidThreads.INSTANCE;
        ExecutorService executorServiceAsFixedSizeThreadPool = androidThreads.asFixedSizeThreadPool(androidThreads.withAndroidPriority(androidThreads.withPrefix(androidThreads.getFactory(), "CXCP-Camera-E"), threadConfigModule.cameraThreadPriority), 1);
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new ph(executorServiceAsFixedSizeThreadPool, 2));
        return executorServiceAsFixedSizeThreadPool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$5$0(ExecutorService executorService) throws InterruptedException {
        executorService.shutdownNow();
        executorService.awaitTermination(1L, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$6(r07 r07Var, r07 r07Var2) {
        z22.b((y22) r07Var.b, null);
        z22.b((y22) r07Var2.b, null);
    }

    /* JADX WARN: Type inference failed for: r13v12, types: [T, y22] */
    /* JADX WARN: Type inference failed for: r13v4, types: [T, kz1] */
    /* JADX WARN: Type inference failed for: r13v7, types: [T, kz1] */
    /* JADX WARN: Type inference failed for: r14v3, types: [T, y22] */
    public final Threads provideThreads(CameraPipeLifetime cameraPipeLifetime, @CameraPipeJob mb4 mb4Var) {
        cameraPipeLifetime.getClass();
        mb4Var.getClass();
        ArrayList arrayList = new ArrayList();
        Executor defaultBlockingExecutor = this.threadConfig.getDefaultBlockingExecutor();
        if (defaultBlockingExecutor == null) {
            AndroidThreads androidThreads = AndroidThreads.INSTANCE;
            defaultBlockingExecutor = androidThreads.asScheduledThreadPool(androidThreads.withAndroidPriority(androidThreads.withPrefix(androidThreads.getFactory(), "CXCP-IO-"), this.defaultThreadPriority), 8);
            arrayList.add(defaultBlockingExecutor);
        }
        Executor executor = defaultBlockingExecutor;
        r22 r22VarX = aq5.x(executor);
        Executor defaultBackgroundExecutor = this.threadConfig.getDefaultBackgroundExecutor();
        if (defaultBackgroundExecutor == null) {
            AndroidThreads androidThreads2 = AndroidThreads.INSTANCE;
            defaultBackgroundExecutor = androidThreads2.asScheduledThreadPool(androidThreads2.withAndroidPriority(androidThreads2.withPrefix(androidThreads2.getFactory(), "CXCP-BG-"), this.defaultThreadPriority), this.backgroundThreadCount);
            arrayList.add(defaultBackgroundExecutor);
        }
        Executor executor2 = defaultBackgroundExecutor;
        r22 r22VarX2 = aq5.x(executor2);
        Executor defaultLightweightExecutor = this.threadConfig.getDefaultLightweightExecutor();
        if (defaultLightweightExecutor == null) {
            AndroidThreads androidThreads3 = AndroidThreads.INSTANCE;
            defaultLightweightExecutor = androidThreads3.asScheduledThreadPool(androidThreads3.withAndroidPriority(androidThreads3.withPrefix(androidThreads3.getFactory(), "CXCP-"), this.cameraThreadPriority), this.lightweightThreadCount);
            arrayList.add(defaultLightweightExecutor);
        }
        Executor executor3 = defaultLightweightExecutor;
        r22 r22VarX3 = aq5.x(executor3);
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new lh(arrayList, 3));
        ll3<Handler> defaultCameraHandlerFn = this.threadConfig.getDefaultCameraHandlerFn();
        if (defaultCameraHandlerFn == null) {
            defaultCameraHandlerFn = new ul(2, this, cameraPipeLifetime);
        }
        ll3<Handler> ll3Var = defaultCameraHandlerFn;
        int i = 0;
        gt8 gt8Var = new gt8(i, this, cameraPipeLifetime);
        r07 r07Var = new r07();
        r07 r07Var2 = new r07();
        if (this.threadConfig.getTestOnlyScope() != null) {
            r07Var.b = this.threadConfig.getTestOnlyScope();
            r07Var2.b = this.threadConfig.getTestOnlyScope();
        } else {
            r07Var.b = z22.a(o22.a.C0306a.d(new jd8(mb4Var), r22VarX3).plus(new w22(Log.TAG)));
            r07Var2.b = z22.a(o22.a.C0306a.d(new jd8(mb4Var), new w22("CXCP-Dispatch")));
            cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new ht8(i, r07Var, r07Var2));
        }
        return new Threads((y22) r07Var.b, (y22) r07Var2.b, executor, r22VarX, executor2, r22VarX2, executor3, r22VarX3, ll3Var, gt8Var);
    }
}
