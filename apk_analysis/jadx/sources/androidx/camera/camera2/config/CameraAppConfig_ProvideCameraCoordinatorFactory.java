package androidx.camera.camera2.config;

import androidx.camera.core.concurrent.CameraCoordinator;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideCameraCoordinatorFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideCameraCoordinatorFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideCameraCoordinatorFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideCameraCoordinatorFactory(cameraAppConfig);
    }

    public static CameraCoordinator provideCameraCoordinator(CameraAppConfig cameraAppConfig) {
        CameraCoordinator cameraCoordinatorProvideCameraCoordinator = cameraAppConfig.provideCameraCoordinator();
        te6.b(cameraCoordinatorProvideCameraCoordinator);
        return cameraCoordinatorProvideCameraCoordinator;
    }

    @Override // defpackage.ws6
    public CameraCoordinator get() {
        return provideCameraCoordinator(this.module);
    }
}
