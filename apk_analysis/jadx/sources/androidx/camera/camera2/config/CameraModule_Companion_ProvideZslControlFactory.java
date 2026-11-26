package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.impl.CameraProperties;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideZslControlFactory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;

    private CameraModule_Companion_ProvideZslControlFactory(xs6<CameraProperties> xs6Var) {
        this.cameraPropertiesProvider = xs6Var;
    }

    public static CameraModule_Companion_ProvideZslControlFactory create(xs6<CameraProperties> xs6Var) {
        return new CameraModule_Companion_ProvideZslControlFactory(xs6Var);
    }

    public static ZslControl provideZslControl(CameraProperties cameraProperties) {
        ZslControl zslControlProvideZslControl = CameraModule.Companion.provideZslControl(cameraProperties);
        te6.b(zslControlProvideZslControl);
        return zslControlProvideZslControl;
    }

    @Override // defpackage.ws6
    public ZslControl get() {
        return provideZslControl(this.cameraPropertiesProvider.get());
    }
}
