package androidx.camera.camera2.config;

import androidx.camera.core.CameraXConfig;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideCameraXConfigFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideCameraXConfigFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideCameraXConfigFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideCameraXConfigFactory(cameraAppConfig);
    }

    public static CameraXConfig provideCameraXConfig(CameraAppConfig cameraAppConfig) {
        CameraXConfig cameraXConfigProvideCameraXConfig = cameraAppConfig.provideCameraXConfig();
        te6.b(cameraXConfigProvideCameraXConfig);
        return cameraXConfigProvideCameraXConfig;
    }

    @Override // defpackage.ws6
    public CameraXConfig get() {
        return provideCameraXConfig(this.module);
    }
}
