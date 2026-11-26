package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import defpackage.mb4;
import defpackage.te6;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCameraGraphModules_Companion_ProvideCameraGraphCoroutineScopeFactory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<Threads> threadsProvider;

    private SharedCameraGraphModules_Companion_ProvideCameraGraphCoroutineScopeFactory(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        this.threadsProvider = xs6Var;
        this.cameraPipeJobProvider = xs6Var2;
    }

    public static SharedCameraGraphModules_Companion_ProvideCameraGraphCoroutineScopeFactory create(xs6<Threads> xs6Var, xs6<mb4> xs6Var2) {
        return new SharedCameraGraphModules_Companion_ProvideCameraGraphCoroutineScopeFactory(xs6Var, xs6Var2);
    }

    public static y22 provideCameraGraphCoroutineScope(Threads threads, mb4 mb4Var) {
        y22 y22VarProvideCameraGraphCoroutineScope = SharedCameraGraphModules.Companion.provideCameraGraphCoroutineScope(threads, mb4Var);
        te6.b(y22VarProvideCameraGraphCoroutineScope);
        return y22VarProvideCameraGraphCoroutineScope;
    }

    @Override // defpackage.ws6
    public y22 get() {
        return provideCameraGraphCoroutineScope(this.threadsProvider.get(), this.cameraPipeJobProvider.get());
    }
}
