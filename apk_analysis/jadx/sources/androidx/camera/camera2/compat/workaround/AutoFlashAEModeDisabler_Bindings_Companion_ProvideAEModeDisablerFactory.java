package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory create(xs6<CameraQuirks> xs6Var) {
        return new AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory(xs6Var);
    }

    public static AutoFlashAEModeDisabler provideAEModeDisabler(CameraQuirks cameraQuirks) {
        AutoFlashAEModeDisabler autoFlashAEModeDisablerProvideAEModeDisabler = AutoFlashAEModeDisabler.Bindings.Companion.provideAEModeDisabler(cameraQuirks);
        te6.b(autoFlashAEModeDisablerProvideAEModeDisabler);
        return autoFlashAEModeDisablerProvideAEModeDisabler;
    }

    @Override // defpackage.ws6
    public AutoFlashAEModeDisabler get() {
        return provideAEModeDisabler(this.cameraQuirksProvider.get());
    }
}
