package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideCameraGraphConfigFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideCameraGraphConfigFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideCameraGraphConfigFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideCameraGraphConfigFactory(camera2ControllerConfig);
    }

    public static CameraGraph.Config provideCameraGraphConfig(Camera2ControllerConfig camera2ControllerConfig) {
        CameraGraph.Config configProvideCameraGraphConfig = camera2ControllerConfig.provideCameraGraphConfig();
        te6.b(configProvideCameraGraphConfig);
        return configProvideCameraGraphConfig;
    }

    @Override // defpackage.ws6
    public CameraGraph.Config get() {
        return provideCameraGraphConfig(this.module);
    }
}
