package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import defpackage.mb4;
import defpackage.te6;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<Threads> threadsProvider;

    private FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        this.threadsProvider = xs6Var;
        this.cameraPipeJobProvider = xs6Var2;
    }

    public static FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory create(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        return new FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory(xs6Var, xs6Var2);
    }

    public static y22 provideFrameGraphCoroutineScope(Threads threads, mb4 mb4Var) {
        y22 y22VarProvideFrameGraphCoroutineScope = FrameGraphModule.Companion.provideFrameGraphCoroutineScope(threads, mb4Var);
        te6.b(y22VarProvideFrameGraphCoroutineScope);
        return y22VarProvideFrameGraphCoroutineScope;
    }

    @Override // defpackage.ws6
    public y22 get() {
        return provideFrameGraphCoroutineScope(this.threadsProvider.get(), this.cameraPipeJobProvider.get());
    }
}
