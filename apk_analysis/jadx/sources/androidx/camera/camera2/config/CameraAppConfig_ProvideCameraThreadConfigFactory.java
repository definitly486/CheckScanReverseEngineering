package androidx.camera.camera2.config;

import androidx.camera.core.impl.CameraThreadConfig;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideCameraThreadConfigFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideCameraThreadConfigFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideCameraThreadConfigFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideCameraThreadConfigFactory(cameraAppConfig);
    }

    public static CameraThreadConfig provideCameraThreadConfig(CameraAppConfig cameraAppConfig) {
        CameraThreadConfig cameraThreadConfigProvideCameraThreadConfig = cameraAppConfig.provideCameraThreadConfig();
        te6.b(cameraThreadConfigProvideCameraThreadConfig);
        return cameraThreadConfigProvideCameraThreadConfig;
    }

    @Override // defpackage.ws6
    public CameraThreadConfig get() {
        return provideCameraThreadConfig(this.module);
    }
}
