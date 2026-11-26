package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class LowLightBoostControl_Factory implements xs6 {
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<ComboRequestListener> comboRequestListenerProvider;
    private final xs6<State3AControl> state3AControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private LowLightBoostControl_Factory(xs6<CameraMetadata> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<ComboRequestListener> xs6Var4) {
        this.cameraMetadataProvider = xs6Var;
        this.state3AControlProvider = xs6Var2;
        this.threadsProvider = xs6Var3;
        this.comboRequestListenerProvider = xs6Var4;
    }

    public static LowLightBoostControl_Factory create(xs6<CameraMetadata> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<ComboRequestListener> xs6Var4) {
        return new LowLightBoostControl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static LowLightBoostControl newInstance(CameraMetadata cameraMetadata, State3AControl state3AControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        return new LowLightBoostControl(cameraMetadata, state3AControl, useCaseThreads, comboRequestListener);
    }

    @Override // defpackage.ws6
    public LowLightBoostControl get() {
        return newInstance(this.cameraMetadataProvider.get(), this.state3AControlProvider.get(), this.threadsProvider.get(), this.comboRequestListenerProvider.get());
    }
}
