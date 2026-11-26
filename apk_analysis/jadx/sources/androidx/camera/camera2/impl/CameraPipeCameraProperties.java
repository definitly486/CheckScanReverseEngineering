package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.CameraMetadata;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraPipeCameraProperties implements CameraProperties {
    private final CameraConfig cameraConfig;
    private final CameraMetadata cameraMetadata;
    private final CameraMetadata metadata;

    public CameraPipeCameraProperties(CameraConfig cameraConfig, CameraMetadata cameraMetadata) {
        cameraConfig.getClass();
        this.cameraConfig = cameraConfig;
        this.cameraMetadata = cameraMetadata;
        cameraMetadata.getClass();
        this.metadata = cameraMetadata;
    }

    @Override // androidx.camera.camera2.impl.CameraProperties
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String mo57getCameraIdDz_R5H8() {
        return this.cameraConfig.m39getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.camera2.impl.CameraProperties
    public CameraMetadata getMetadata() {
        return this.metadata;
    }
}
