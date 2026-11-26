package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideCameraPipeFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideCameraPipeFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideCameraPipeFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideCameraPipeFactory(cameraAppConfig);
    }

    public static CameraPipe provideCameraPipe(CameraAppConfig cameraAppConfig) {
        CameraPipe cameraPipeProvideCameraPipe = cameraAppConfig.provideCameraPipe();
        te6.b(cameraPipeProvideCameraPipe);
        return cameraPipeProvideCameraPipe;
    }

    @Override // defpackage.ws6
    public CameraPipe get() {
        return provideCameraPipe(this.module);
    }
}
