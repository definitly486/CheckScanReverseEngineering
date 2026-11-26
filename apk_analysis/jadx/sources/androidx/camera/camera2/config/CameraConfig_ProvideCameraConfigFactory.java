package androidx.camera.camera2.config;

import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraConfig_ProvideCameraConfigFactory implements xs6 {
    private final CameraConfig module;

    private CameraConfig_ProvideCameraConfigFactory(CameraConfig cameraConfig) {
        this.module = cameraConfig;
    }

    public static CameraConfig_ProvideCameraConfigFactory create(CameraConfig cameraConfig) {
        return new CameraConfig_ProvideCameraConfigFactory(cameraConfig);
    }

    public static CameraConfig provideCameraConfig(CameraConfig cameraConfig) {
        CameraConfig cameraConfigProvideCameraConfig = cameraConfig.provideCameraConfig();
        te6.b(cameraConfigProvideCameraConfig);
        return cameraConfigProvideCameraConfig;
    }

    @Override // defpackage.ws6
    public CameraConfig get() {
        return provideCameraConfig(this.module);
    }
}
