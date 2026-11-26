package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeCameraProperties_Factory implements xs6 {
    private final xs6<CameraConfig> cameraConfigProvider;
    private final xs6<CameraMetadata> cameraMetadataProvider;

    private CameraPipeCameraProperties_Factory(xs6<CameraConfig> xs6Var, xs6<CameraMetadata> xs6Var2) {
        this.cameraConfigProvider = xs6Var;
        this.cameraMetadataProvider = xs6Var2;
    }

    public static CameraPipeCameraProperties_Factory create(xs6<CameraConfig> xs6Var, xs6<CameraMetadata> xs6Var2) {
        return new CameraPipeCameraProperties_Factory(xs6Var, xs6Var2);
    }

    public static CameraPipeCameraProperties newInstance(CameraConfig cameraConfig, CameraMetadata cameraMetadata) {
        return new CameraPipeCameraProperties(cameraConfig, cameraMetadata);
    }

    @Override // defpackage.ws6
    public CameraPipeCameraProperties get() {
        return newInstance(this.cameraConfigProvider.get(), this.cameraMetadataProvider.get());
    }
}
