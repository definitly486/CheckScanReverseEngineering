package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory implements xs6 {
    private final xs6<CameraPipe.Config> configProvider;

    private CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory(xs6<CameraPipe.Config> xs6Var) {
        this.configProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory create(xs6<CameraPipe.Config> xs6Var) {
        return new CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory(xs6Var);
    }

    public static CameraPipe.CameraMetadataConfig provideCameraMetadataConfig(CameraPipe.Config config) {
        CameraPipe.CameraMetadataConfig cameraMetadataConfigProvideCameraMetadataConfig = CameraPipeModule.Companion.provideCameraMetadataConfig(config);
        te6.b(cameraMetadataConfigProvideCameraMetadataConfig);
        return cameraMetadataConfigProvideCameraMetadataConfig;
    }

    @Override // defpackage.ws6
    public CameraPipe.CameraMetadataConfig get() {
        return provideCameraMetadataConfig(this.configProvider.get());
    }
}
