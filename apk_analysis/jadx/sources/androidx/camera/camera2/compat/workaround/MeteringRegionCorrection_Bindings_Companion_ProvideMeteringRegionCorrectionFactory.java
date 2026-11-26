package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory create(xs6<CameraQuirks> xs6Var) {
        return new MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory(xs6Var);
    }

    public static MeteringRegionCorrection provideMeteringRegionCorrection(CameraQuirks cameraQuirks) {
        MeteringRegionCorrection meteringRegionCorrectionProvideMeteringRegionCorrection = MeteringRegionCorrection.Bindings.Companion.provideMeteringRegionCorrection(cameraQuirks);
        te6.b(meteringRegionCorrectionProvideMeteringRegionCorrection);
        return meteringRegionCorrectionProvideMeteringRegionCorrection;
    }

    @Override // defpackage.ws6
    public MeteringRegionCorrection get() {
        return provideMeteringRegionCorrection(this.cameraQuirksProvider.get());
    }
}
