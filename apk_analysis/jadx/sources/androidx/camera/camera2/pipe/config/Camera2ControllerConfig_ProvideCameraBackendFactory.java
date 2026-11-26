package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideCameraBackendFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideCameraBackendFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideCameraBackendFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideCameraBackendFactory(camera2ControllerConfig);
    }

    public static CameraBackend provideCameraBackend(Camera2ControllerConfig camera2ControllerConfig) {
        CameraBackend cameraBackendProvideCameraBackend = camera2ControllerConfig.provideCameraBackend();
        te6.b(cameraBackendProvideCameraBackend);
        return cameraBackendProvideCameraBackend;
    }

    @Override // defpackage.ws6
    public CameraBackend get() {
        return provideCameraBackend(this.module);
    }
}
