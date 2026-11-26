package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import defpackage.mb4;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadConfigModule_ProvideThreadsFactory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<CameraPipeLifetime> cameraPipeLifetimeProvider;
    private final ThreadConfigModule module;

    private ThreadConfigModule_ProvideThreadsFactory(ThreadConfigModule threadConfigModule, xs6<CameraPipeLifetime> xs6Var, xs6<mb4> xs6Var2) {
        this.module = threadConfigModule;
        this.cameraPipeLifetimeProvider = xs6Var;
        this.cameraPipeJobProvider = xs6Var2;
    }

    public static ThreadConfigModule_ProvideThreadsFactory create(ThreadConfigModule threadConfigModule, xs6<CameraPipeLifetime> xs6Var, xs6<mb4> xs6Var2) {
        return new ThreadConfigModule_ProvideThreadsFactory(threadConfigModule, xs6Var, xs6Var2);
    }

    public static Threads provideThreads(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime, mb4 mb4Var) {
        Threads threadsProvideThreads = threadConfigModule.provideThreads(cameraPipeLifetime, mb4Var);
        te6.b(threadsProvideThreads);
        return threadsProvideThreads;
    }

    @Override // defpackage.ws6
    public Threads get() {
        return provideThreads(this.module, this.cameraPipeLifetimeProvider.get(), this.cameraPipeJobProvider.get());
    }
}
