package androidx.camera.camera2.compat.quirk;

import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraQuirks_Factory implements xs6 {
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<StreamConfigurationMapCompat> streamConfigurationMapCompatProvider;

    private CameraQuirks_Factory(xs6<CameraMetadata> xs6Var, xs6<StreamConfigurationMapCompat> xs6Var2) {
        this.cameraMetadataProvider = xs6Var;
        this.streamConfigurationMapCompatProvider = xs6Var2;
    }

    public static CameraQuirks_Factory create(xs6<CameraMetadata> xs6Var, xs6<StreamConfigurationMapCompat> xs6Var2) {
        return new CameraQuirks_Factory(xs6Var, xs6Var2);
    }

    public static CameraQuirks newInstance(CameraMetadata cameraMetadata, StreamConfigurationMapCompat streamConfigurationMapCompat) {
        return new CameraQuirks(cameraMetadata, streamConfigurationMapCompat);
    }

    @Override // defpackage.ws6
    public CameraQuirks get() {
        return newInstance(this.cameraMetadataProvider.get(), this.streamConfigurationMapCompatProvider.get());
    }
}
