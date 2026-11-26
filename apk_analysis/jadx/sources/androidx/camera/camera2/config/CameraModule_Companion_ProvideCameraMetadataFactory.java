package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideCameraMetadataFactory implements xs6 {
    private final xs6<CameraPipe> cameraPipeProvider;
    private final xs6<CameraConfig> configProvider;

    private CameraModule_Companion_ProvideCameraMetadataFactory(xs6<CameraPipe> xs6Var, xs6<CameraConfig> xs6Var2) {
        this.cameraPipeProvider = xs6Var;
        this.configProvider = xs6Var2;
    }

    public static CameraModule_Companion_ProvideCameraMetadataFactory create(xs6<CameraPipe> xs6Var, xs6<CameraConfig> xs6Var2) {
        return new CameraModule_Companion_ProvideCameraMetadataFactory(xs6Var, xs6Var2);
    }

    public static CameraMetadata provideCameraMetadata(CameraPipe cameraPipe, CameraConfig cameraConfig) {
        return CameraModule.Companion.provideCameraMetadata(cameraPipe, cameraConfig);
    }

    @Override // defpackage.ws6
    public CameraMetadata get() {
        return provideCameraMetadata(this.cameraPipeProvider.get(), this.configProvider.get());
    }
}
