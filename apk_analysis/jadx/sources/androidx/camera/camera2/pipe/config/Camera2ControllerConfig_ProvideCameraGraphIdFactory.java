package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraphId;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideCameraGraphIdFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideCameraGraphIdFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideCameraGraphIdFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideCameraGraphIdFactory(camera2ControllerConfig);
    }

    public static CameraGraphId provideCameraGraphId(Camera2ControllerConfig camera2ControllerConfig) {
        CameraGraphId cameraGraphIdProvideCameraGraphId = camera2ControllerConfig.provideCameraGraphId();
        te6.b(cameraGraphIdProvideCameraGraphId);
        return cameraGraphIdProvideCameraGraphId;
    }

    @Override // defpackage.ws6
    public CameraGraphId get() {
        return provideCameraGraphId(this.module);
    }
}
