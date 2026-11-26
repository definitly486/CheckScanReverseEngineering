package androidx.camera.camera2.config;

import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideCameraIdStringFactory implements xs6 {
    private final xs6<CameraConfig> configProvider;

    private CameraModule_Companion_ProvideCameraIdStringFactory(xs6<CameraConfig> xs6Var) {
        this.configProvider = xs6Var;
    }

    public static CameraModule_Companion_ProvideCameraIdStringFactory create(xs6<CameraConfig> xs6Var) {
        return new CameraModule_Companion_ProvideCameraIdStringFactory(xs6Var);
    }

    public static String provideCameraIdString(CameraConfig cameraConfig) {
        String strProvideCameraIdString = CameraModule.Companion.provideCameraIdString(cameraConfig);
        te6.b(strProvideCameraIdString);
        return strProvideCameraIdString;
    }

    @Override // defpackage.ws6
    public String get() {
        return provideCameraIdString(this.configProvider.get());
    }
}
