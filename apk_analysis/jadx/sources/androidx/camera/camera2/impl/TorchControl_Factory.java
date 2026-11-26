package androidx.camera.camera2.impl;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class TorchControl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<State3AControl> state3AControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private TorchControl_Factory(xs6<CameraProperties> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3) {
        this.cameraPropertiesProvider = xs6Var;
        this.state3AControlProvider = xs6Var2;
        this.threadsProvider = xs6Var3;
    }

    public static TorchControl_Factory create(xs6<CameraProperties> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3) {
        return new TorchControl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static TorchControl newInstance(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads) {
        return new TorchControl(cameraProperties, state3AControl, useCaseThreads);
    }

    @Override // defpackage.ws6
    public TorchControl get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.state3AControlProvider.get(), this.threadsProvider.get());
    }
}
