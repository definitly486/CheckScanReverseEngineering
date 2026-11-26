package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import defpackage.mb4;
import defpackage.te6;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        this.threadsProvider = xs6Var;
        this.cameraPipeJobProvider = xs6Var2;
    }

    public static Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory create(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        return new Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory(xs6Var, xs6Var2);
    }

    public static y22 provideCoroutineScope(Threads threads, mb4 mb4Var) {
        y22 y22VarProvideCoroutineScope = Camera2ControllerModule.Companion.provideCoroutineScope(threads, mb4Var);
        te6.b(y22VarProvideCoroutineScope);
        return y22VarProvideCoroutineScope;
    }

    @Override // defpackage.ws6
    public y22 get() {
        return provideCoroutineScope(this.threadsProvider.get(), this.cameraPipeJobProvider.get());
    }
}
