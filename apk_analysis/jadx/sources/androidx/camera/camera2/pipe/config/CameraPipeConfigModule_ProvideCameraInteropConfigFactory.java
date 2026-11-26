package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeConfigModule_ProvideCameraInteropConfigFactory implements xs6 {
    private final xs6<CameraPipe.Config> cameraPipeConfigProvider;
    private final CameraPipeConfigModule module;

    private CameraPipeConfigModule_ProvideCameraInteropConfigFactory(CameraPipeConfigModule cameraPipeConfigModule, xs6<CameraPipe.Config> xs6Var) {
        this.module = cameraPipeConfigModule;
        this.cameraPipeConfigProvider = xs6Var;
    }

    public static CameraPipeConfigModule_ProvideCameraInteropConfigFactory create(CameraPipeConfigModule cameraPipeConfigModule, xs6<CameraPipe.Config> xs6Var) {
        return new CameraPipeConfigModule_ProvideCameraInteropConfigFactory(cameraPipeConfigModule, xs6Var);
    }

    public static CameraPipe.CameraInteropConfig provideCameraInteropConfig(CameraPipeConfigModule cameraPipeConfigModule, CameraPipe.Config config) {
        CameraPipe.CameraInteropConfig cameraInteropConfigProvideCameraInteropConfig = cameraPipeConfigModule.provideCameraInteropConfig(config);
        te6.b(cameraInteropConfigProvideCameraInteropConfig);
        return cameraInteropConfigProvideCameraInteropConfig;
    }

    @Override // defpackage.ws6
    public CameraPipe.CameraInteropConfig get() {
        return provideCameraInteropConfig(this.module, this.cameraPipeConfigProvider.get());
    }
}
