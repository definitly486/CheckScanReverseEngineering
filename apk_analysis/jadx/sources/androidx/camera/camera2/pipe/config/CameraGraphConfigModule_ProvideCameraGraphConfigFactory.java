package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphConfigModule_ProvideCameraGraphConfigFactory implements xs6 {
    private final CameraGraphConfigModule module;

    private CameraGraphConfigModule_ProvideCameraGraphConfigFactory(CameraGraphConfigModule cameraGraphConfigModule) {
        this.module = cameraGraphConfigModule;
    }

    public static CameraGraphConfigModule_ProvideCameraGraphConfigFactory create(CameraGraphConfigModule cameraGraphConfigModule) {
        return new CameraGraphConfigModule_ProvideCameraGraphConfigFactory(cameraGraphConfigModule);
    }

    public static CameraGraph.Config provideCameraGraphConfig(CameraGraphConfigModule cameraGraphConfigModule) {
        CameraGraph.Config configProvideCameraGraphConfig = cameraGraphConfigModule.provideCameraGraphConfig();
        te6.b(configProvideCameraGraphConfig);
        return configProvideCameraGraphConfig;
    }

    @Override // defpackage.ws6
    public CameraGraph.Config get() {
        return provideCameraGraphConfig(this.module);
    }
}
