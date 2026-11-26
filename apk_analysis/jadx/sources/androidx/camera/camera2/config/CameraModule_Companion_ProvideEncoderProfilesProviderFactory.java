package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.impl.EncoderProfilesProvider;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideEncoderProfilesProviderFactory implements xs6 {
    private final xs6<String> cameraIdStringProvider;
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private CameraModule_Companion_ProvideEncoderProfilesProviderFactory(xs6<String> xs6Var, xs6<CameraQuirks> xs6Var2) {
        this.cameraIdStringProvider = xs6Var;
        this.cameraQuirksProvider = xs6Var2;
    }

    public static CameraModule_Companion_ProvideEncoderProfilesProviderFactory create(xs6<String> xs6Var, xs6<CameraQuirks> xs6Var2) {
        return new CameraModule_Companion_ProvideEncoderProfilesProviderFactory(xs6Var, xs6Var2);
    }

    public static EncoderProfilesProvider provideEncoderProfilesProvider(String str, CameraQuirks cameraQuirks) {
        EncoderProfilesProvider encoderProfilesProviderProvideEncoderProfilesProvider = CameraModule.Companion.provideEncoderProfilesProvider(str, cameraQuirks);
        te6.b(encoderProfilesProviderProvideEncoderProfilesProvider);
        return encoderProfilesProviderProvideEncoderProfilesProvider;
    }

    @Override // defpackage.ws6
    public EncoderProfilesProvider get() {
        return provideEncoderProfilesProvider(this.cameraIdStringProvider.get(), this.cameraQuirksProvider.get());
    }
}
