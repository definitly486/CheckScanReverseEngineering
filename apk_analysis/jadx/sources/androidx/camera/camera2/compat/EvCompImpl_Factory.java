package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseThreads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class EvCompImpl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<ComboRequestListener> comboRequestListenerProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private EvCompImpl_Factory(xs6<CameraProperties> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<ComboRequestListener> xs6Var3) {
        this.cameraPropertiesProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.comboRequestListenerProvider = xs6Var3;
    }

    public static EvCompImpl_Factory create(xs6<CameraProperties> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<ComboRequestListener> xs6Var3) {
        return new EvCompImpl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static EvCompImpl newInstance(CameraProperties cameraProperties, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        return new EvCompImpl(cameraProperties, useCaseThreads, comboRequestListener);
    }

    @Override // defpackage.ws6
    public EvCompImpl get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.threadsProvider.get(), this.comboRequestListenerProvider.get());
    }
}
