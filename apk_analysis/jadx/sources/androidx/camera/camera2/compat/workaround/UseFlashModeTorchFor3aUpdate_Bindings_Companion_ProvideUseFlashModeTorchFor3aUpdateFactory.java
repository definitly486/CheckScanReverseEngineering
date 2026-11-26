package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory create(xs6<CameraQuirks> xs6Var) {
        return new UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory(xs6Var);
    }

    public static UseFlashModeTorchFor3aUpdate provideUseFlashModeTorchFor3aUpdate(CameraQuirks cameraQuirks) {
        UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdateProvideUseFlashModeTorchFor3aUpdate = UseFlashModeTorchFor3aUpdate.Bindings.Companion.provideUseFlashModeTorchFor3aUpdate(cameraQuirks);
        te6.b(useFlashModeTorchFor3aUpdateProvideUseFlashModeTorchFor3aUpdate);
        return useFlashModeTorchFor3aUpdateProvideUseFlashModeTorchFor3aUpdate;
    }

    @Override // defpackage.ws6
    public UseFlashModeTorchFor3aUpdate get() {
        return provideUseFlashModeTorchFor3aUpdate(this.cameraQuirksProvider.get());
    }
}
