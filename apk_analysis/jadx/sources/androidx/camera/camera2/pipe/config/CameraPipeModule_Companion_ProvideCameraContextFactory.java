package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraContextFactory implements xs6 {
    private final xs6<CameraBackends> cameraBackendsProvider;
    private final xs6<Context> cameraPipeContextProvider;
    private final xs6<Threads> threadsProvider;

    private CameraPipeModule_Companion_ProvideCameraContextFactory(xs6<Context> xs6Var, xs6<Threads> xs6Var2, xs6<CameraBackends> xs6Var3) {
        this.cameraPipeContextProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.cameraBackendsProvider = xs6Var3;
    }

    public static CameraPipeModule_Companion_ProvideCameraContextFactory create(xs6<Context> xs6Var, xs6<Threads> xs6Var2, xs6<CameraBackends> xs6Var3) {
        return new CameraPipeModule_Companion_ProvideCameraContextFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static CameraContext provideCameraContext(Context context, Threads threads, CameraBackends cameraBackends) {
        CameraContext cameraContextProvideCameraContext = CameraPipeModule.Companion.provideCameraContext(context, threads, cameraBackends);
        te6.b(cameraContextProvideCameraContext);
        return cameraContextProvideCameraContext;
    }

    @Override // defpackage.ws6
    public CameraContext get() {
        return provideCameraContext(this.cameraPipeContextProvider.get(), this.threadsProvider.get(), this.cameraBackendsProvider.get());
    }
}
