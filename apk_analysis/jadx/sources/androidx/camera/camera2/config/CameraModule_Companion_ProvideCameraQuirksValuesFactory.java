package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.impl.Quirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideCameraQuirksValuesFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private CameraModule_Companion_ProvideCameraQuirksValuesFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static CameraModule_Companion_ProvideCameraQuirksValuesFactory create(xs6<CameraQuirks> xs6Var) {
        return new CameraModule_Companion_ProvideCameraQuirksValuesFactory(xs6Var);
    }

    public static Quirks provideCameraQuirksValues(CameraQuirks cameraQuirks) {
        Quirks quirksProvideCameraQuirksValues = CameraModule.Companion.provideCameraQuirksValues(cameraQuirks);
        te6.b(quirksProvideCameraQuirksValues);
        return quirksProvideCameraQuirksValues;
    }

    @Override // defpackage.ws6
    public Quirks get() {
        return provideCameraQuirksValues(this.cameraQuirksProvider.get());
    }
}
