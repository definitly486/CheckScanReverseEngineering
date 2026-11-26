package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Threads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceCloserImpl_Factory implements xs6 {
    private final xs6<Camera2Quirks> camera2QuirksProvider;
    private final xs6<RetryingCameraStateOpener> retryingCameraStateOpenerProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2DeviceCloserImpl_Factory(xs6<Threads> xs6Var, xs6<Camera2Quirks> xs6Var2, xs6<RetryingCameraStateOpener> xs6Var3) {
        this.threadsProvider = xs6Var;
        this.camera2QuirksProvider = xs6Var2;
        this.retryingCameraStateOpenerProvider = xs6Var3;
    }

    public static Camera2DeviceCloserImpl_Factory create(xs6<Threads> xs6Var, xs6<Camera2Quirks> xs6Var2, xs6<RetryingCameraStateOpener> xs6Var3) {
        return new Camera2DeviceCloserImpl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static Camera2DeviceCloserImpl newInstance(Threads threads, Camera2Quirks camera2Quirks, RetryingCameraStateOpener retryingCameraStateOpener) {
        return new Camera2DeviceCloserImpl(threads, camera2Quirks, retryingCameraStateOpener);
    }

    @Override // defpackage.ws6
    public Camera2DeviceCloserImpl get() {
        return newInstance(this.threadsProvider.get(), this.camera2QuirksProvider.get(), this.retryingCameraStateOpenerProvider.get());
    }
}
