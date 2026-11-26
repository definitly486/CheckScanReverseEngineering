package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class PruningCamera2DeviceManager_Factory implements xs6 {
    private final xs6<Camera2DeviceCloser> camera2DeviceCloserProvider;
    private final xs6<Camera2ErrorProcessor> camera2ErrorProcessorProvider;
    private final xs6<Permissions> permissionsProvider;
    private final xs6<RetryingCameraStateOpener> retryingCameraStateOpenerProvider;
    private final xs6<Threads> threadsProvider;

    private PruningCamera2DeviceManager_Factory(xs6<Permissions> xs6Var, xs6<RetryingCameraStateOpener> xs6Var2, xs6<Camera2DeviceCloser> xs6Var3, xs6<Camera2ErrorProcessor> xs6Var4, xs6<Threads> xs6Var5) {
        this.permissionsProvider = xs6Var;
        this.retryingCameraStateOpenerProvider = xs6Var2;
        this.camera2DeviceCloserProvider = xs6Var3;
        this.camera2ErrorProcessorProvider = xs6Var4;
        this.threadsProvider = xs6Var5;
    }

    public static PruningCamera2DeviceManager_Factory create(xs6<Permissions> xs6Var, xs6<RetryingCameraStateOpener> xs6Var2, xs6<Camera2DeviceCloser> xs6Var3, xs6<Camera2ErrorProcessor> xs6Var4, xs6<Threads> xs6Var5) {
        return new PruningCamera2DeviceManager_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static PruningCamera2DeviceManager newInstance(Permissions permissions, RetryingCameraStateOpener retryingCameraStateOpener, Camera2DeviceCloser camera2DeviceCloser, Camera2ErrorProcessor camera2ErrorProcessor, Threads threads) {
        return new PruningCamera2DeviceManager(permissions, retryingCameraStateOpener, camera2DeviceCloser, camera2ErrorProcessor, threads);
    }

    @Override // defpackage.ws6
    public PruningCamera2DeviceManager get() {
        return newInstance(this.permissionsProvider.get(), this.retryingCameraStateOpenerProvider.get(), this.camera2DeviceCloserProvider.get(), this.camera2ErrorProcessorProvider.get(), this.threadsProvider.get());
    }
}
