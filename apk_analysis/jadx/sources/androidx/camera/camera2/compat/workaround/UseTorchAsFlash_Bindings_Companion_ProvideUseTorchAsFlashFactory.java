package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.pipe.CameraDevices;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory implements xs6 {
    private final xs6<CameraDevices> cameraDevicesProvider;
    private final xs6<CameraQuirks> cameraQuirksProvider;
    private final xs6<IntrinsicZoomCalculator> intrinsicZoomCalculatorProvider;

    private UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory(xs6<CameraQuirks> xs6Var, xs6<CameraDevices> xs6Var2, xs6<IntrinsicZoomCalculator> xs6Var3) {
        this.cameraQuirksProvider = xs6Var;
        this.cameraDevicesProvider = xs6Var2;
        this.intrinsicZoomCalculatorProvider = xs6Var3;
    }

    public static UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory create(xs6<CameraQuirks> xs6Var, xs6<CameraDevices> xs6Var2, xs6<IntrinsicZoomCalculator> xs6Var3) {
        return new UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static UseTorchAsFlash provideUseTorchAsFlash(CameraQuirks cameraQuirks, CameraDevices cameraDevices, IntrinsicZoomCalculator intrinsicZoomCalculator) {
        UseTorchAsFlash useTorchAsFlashProvideUseTorchAsFlash = UseTorchAsFlash.Bindings.Companion.provideUseTorchAsFlash(cameraQuirks, cameraDevices, intrinsicZoomCalculator);
        te6.b(useTorchAsFlashProvideUseTorchAsFlash);
        return useTorchAsFlashProvideUseTorchAsFlash;
    }

    @Override // defpackage.ws6
    public UseTorchAsFlash get() {
        return provideUseTorchAsFlash(this.cameraQuirksProvider.get(), this.cameraDevicesProvider.get(), this.intrinsicZoomCalculatorProvider.get());
    }
}
