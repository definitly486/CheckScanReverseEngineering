package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.CameraProperties;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;

    private ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory(xs6<CameraProperties> xs6Var) {
        this.cameraPropertiesProvider = xs6Var;
    }

    public static ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory create(xs6<CameraProperties> xs6Var) {
        return new ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory(xs6Var);
    }

    public static ZoomCompat provideZoomCompat(CameraProperties cameraProperties) {
        ZoomCompat zoomCompatProvideZoomCompat = ZoomCompat.Bindings.Companion.provideZoomCompat(cameraProperties);
        te6.b(zoomCompatProvideZoomCompat);
        return zoomCompatProvideZoomCompat;
    }

    @Override // defpackage.ws6
    public ZoomCompat get() {
        return provideZoomCompat(this.cameraPropertiesProvider.get());
    }
}
