package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FlashControl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<State3AControl> state3AControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<TorchControl> torchControlProvider;
    private final xs6<UseFlashModeTorchFor3aUpdate> useFlashModeTorchFor3aUpdateProvider;

    private FlashControl_Factory(xs6<CameraProperties> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<TorchControl> xs6Var4, xs6<UseFlashModeTorchFor3aUpdate> xs6Var5) {
        this.cameraPropertiesProvider = xs6Var;
        this.state3AControlProvider = xs6Var2;
        this.threadsProvider = xs6Var3;
        this.torchControlProvider = xs6Var4;
        this.useFlashModeTorchFor3aUpdateProvider = xs6Var5;
    }

    public static FlashControl_Factory create(xs6<CameraProperties> xs6Var, xs6<State3AControl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<TorchControl> xs6Var4, xs6<UseFlashModeTorchFor3aUpdate> xs6Var5) {
        return new FlashControl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static FlashControl newInstance(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads, TorchControl torchControl, UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
        return new FlashControl(cameraProperties, state3AControl, useCaseThreads, torchControl, useFlashModeTorchFor3aUpdate);
    }

    @Override // defpackage.ws6
    public FlashControl get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.state3AControlProvider.get(), this.threadsProvider.get(), this.torchControlProvider.get(), this.useFlashModeTorchFor3aUpdateProvider.get());
    }
}
