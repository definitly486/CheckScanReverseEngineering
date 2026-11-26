package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class InternalCameraGraphModules_Companion_ProvideCameraBackendFactory implements xs6 {
    private final xs6<CameraBackends> cameraBackendsProvider;
    private final xs6<CameraContext> cameraContextProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;

    private InternalCameraGraphModules_Companion_ProvideCameraBackendFactory(xs6<CameraBackends> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<CameraContext> xs6Var3) {
        this.cameraBackendsProvider = xs6Var;
        this.graphConfigProvider = xs6Var2;
        this.cameraContextProvider = xs6Var3;
    }

    public static InternalCameraGraphModules_Companion_ProvideCameraBackendFactory create(xs6<CameraBackends> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<CameraContext> xs6Var3) {
        return new InternalCameraGraphModules_Companion_ProvideCameraBackendFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static CameraBackend provideCameraBackend(CameraBackends cameraBackends, CameraGraph.Config config, CameraContext cameraContext) {
        CameraBackend cameraBackendProvideCameraBackend = InternalCameraGraphModules.Companion.provideCameraBackend(cameraBackends, config, cameraContext);
        te6.b(cameraBackendProvideCameraBackend);
        return cameraBackendProvideCameraBackend;
    }

    @Override // defpackage.ws6
    public CameraBackend get() {
        return provideCameraBackend(this.cameraBackendsProvider.get(), this.graphConfigProvider.get(), this.cameraContextProvider.get());
    }
}
