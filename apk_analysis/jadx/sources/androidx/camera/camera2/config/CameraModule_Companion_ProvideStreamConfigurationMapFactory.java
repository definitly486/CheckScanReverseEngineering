package androidx.camera.camera2.config;

import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideStreamConfigurationMapFactory implements xs6 {
    private final xs6<CameraMetadata> cameraMetadataProvider;

    private CameraModule_Companion_ProvideStreamConfigurationMapFactory(xs6<CameraMetadata> xs6Var) {
        this.cameraMetadataProvider = xs6Var;
    }

    public static CameraModule_Companion_ProvideStreamConfigurationMapFactory create(xs6<CameraMetadata> xs6Var) {
        return new CameraModule_Companion_ProvideStreamConfigurationMapFactory(xs6Var);
    }

    public static StreamConfigurationMap provideStreamConfigurationMap(CameraMetadata cameraMetadata) {
        return CameraModule.Companion.provideStreamConfigurationMap(cameraMetadata);
    }

    @Override // defpackage.ws6
    public StreamConfigurationMap get() {
        return provideStreamConfigurationMap(this.cameraMetadataProvider.get());
    }
}
