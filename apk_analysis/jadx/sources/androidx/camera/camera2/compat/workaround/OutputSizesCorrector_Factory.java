package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class OutputSizesCorrector_Factory implements xs6 {
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<StreamConfigurationMap> streamConfigurationMapProvider;

    private OutputSizesCorrector_Factory(xs6<CameraMetadata> xs6Var, xs6<StreamConfigurationMap> xs6Var2) {
        this.cameraMetadataProvider = xs6Var;
        this.streamConfigurationMapProvider = xs6Var2;
    }

    public static OutputSizesCorrector_Factory create(xs6<CameraMetadata> xs6Var, xs6<StreamConfigurationMap> xs6Var2) {
        return new OutputSizesCorrector_Factory(xs6Var, xs6Var2);
    }

    public static OutputSizesCorrector newInstance(CameraMetadata cameraMetadata, StreamConfigurationMap streamConfigurationMap) {
        return new OutputSizesCorrector(cameraMetadata, streamConfigurationMap);
    }

    @Override // defpackage.ws6
    public OutputSizesCorrector get() {
        return newInstance(this.cameraMetadataProvider.get(), this.streamConfigurationMapProvider.get());
    }
}
