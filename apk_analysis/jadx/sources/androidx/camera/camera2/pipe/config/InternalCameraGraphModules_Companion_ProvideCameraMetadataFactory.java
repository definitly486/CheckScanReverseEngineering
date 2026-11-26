package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class InternalCameraGraphModules_Companion_ProvideCameraMetadataFactory implements xs6 {
    private final xs6<CameraBackend> cameraBackendProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;

    private InternalCameraGraphModules_Companion_ProvideCameraMetadataFactory(xs6<CameraGraph.Config> xs6Var, xs6<CameraBackend> xs6Var2) {
        this.graphConfigProvider = xs6Var;
        this.cameraBackendProvider = xs6Var2;
    }

    public static InternalCameraGraphModules_Companion_ProvideCameraMetadataFactory create(xs6<CameraGraph.Config> xs6Var, xs6<CameraBackend> xs6Var2) {
        return new InternalCameraGraphModules_Companion_ProvideCameraMetadataFactory(xs6Var, xs6Var2);
    }

    public static CameraMetadata provideCameraMetadata(CameraGraph.Config config, CameraBackend cameraBackend) {
        CameraMetadata cameraMetadataProvideCameraMetadata = InternalCameraGraphModules.Companion.provideCameraMetadata(config, cameraBackend);
        te6.b(cameraMetadataProvideCameraMetadata);
        return cameraMetadataProvideCameraMetadata;
    }

    @Override // defpackage.ws6
    public CameraMetadata get() {
        return provideCameraMetadata(this.graphConfigProvider.get(), this.cameraBackendProvider.get());
    }
}
