package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import defpackage.te6;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraBackendsFactory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;
    private final xs6<CameraPipeLifetime> cameraPipeLifetimeProvider;
    private final xs6<CameraPipe.Config> configProvider;
    private final xs6<CameraBackend> defaultCameraBackendProvider;
    private final xs6<Threads> threadsProvider;

    private CameraPipeModule_Companion_ProvideCameraBackendsFactory(xs6<CameraPipe.Config> xs6Var, xs6<CameraBackend> xs6Var2, xs6<Context> xs6Var3, xs6<Threads> xs6Var4, xs6<CameraPipeLifetime> xs6Var5) {
        this.configProvider = xs6Var;
        this.defaultCameraBackendProvider = xs6Var2;
        this.cameraPipeContextProvider = xs6Var3;
        this.threadsProvider = xs6Var4;
        this.cameraPipeLifetimeProvider = xs6Var5;
    }

    public static CameraPipeModule_Companion_ProvideCameraBackendsFactory create(xs6<CameraPipe.Config> xs6Var, xs6<CameraBackend> xs6Var2, xs6<Context> xs6Var3, xs6<Threads> xs6Var4, xs6<CameraPipeLifetime> xs6Var5) {
        return new CameraPipeModule_Companion_ProvideCameraBackendsFactory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static CameraBackends provideCameraBackends(CameraPipe.Config config, ws6<CameraBackend> ws6Var, Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
        CameraBackends cameraBackendsProvideCameraBackends = CameraPipeModule.Companion.provideCameraBackends(config, ws6Var, context, threads, cameraPipeLifetime);
        te6.b(cameraBackendsProvideCameraBackends);
        return cameraBackendsProvideCameraBackends;
    }

    @Override // defpackage.ws6
    public CameraBackends get() {
        return provideCameraBackends(this.configProvider.get(), this.defaultCameraBackendProvider, this.cameraPipeContextProvider.get(), this.threadsProvider.get(), this.cameraPipeLifetimeProvider.get());
    }
}
