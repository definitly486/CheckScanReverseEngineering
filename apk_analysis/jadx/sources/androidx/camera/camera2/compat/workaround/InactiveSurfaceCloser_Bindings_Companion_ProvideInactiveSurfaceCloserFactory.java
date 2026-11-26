package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory create(xs6<CameraQuirks> xs6Var) {
        return new InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory(xs6Var);
    }

    public static InactiveSurfaceCloser provideInactiveSurfaceCloser(CameraQuirks cameraQuirks) {
        InactiveSurfaceCloser inactiveSurfaceCloserProvideInactiveSurfaceCloser = InactiveSurfaceCloser.Bindings.Companion.provideInactiveSurfaceCloser(cameraQuirks);
        te6.b(inactiveSurfaceCloserProvideInactiveSurfaceCloser);
        return inactiveSurfaceCloserProvideInactiveSurfaceCloser;
    }

    @Override // defpackage.ws6
    public InactiveSurfaceCloser get() {
        return provideInactiveSurfaceCloser(this.cameraQuirksProvider.get());
    }
}
