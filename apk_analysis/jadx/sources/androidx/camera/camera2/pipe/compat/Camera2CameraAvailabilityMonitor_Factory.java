package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.mb4;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraAvailabilityMonitor_Factory implements xs6 {
    private final xs6<CameraManager> cameraManagerProvider;
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2CameraAvailabilityMonitor_Factory(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<mb4> xs6Var3) {
        this.cameraManagerProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.cameraPipeJobProvider = xs6Var3;
    }

    public static Camera2CameraAvailabilityMonitor_Factory create(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<mb4> xs6Var3) {
        return new Camera2CameraAvailabilityMonitor_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static Camera2CameraAvailabilityMonitor newInstance(ws6<CameraManager> ws6Var, Threads threads, mb4 mb4Var) {
        return new Camera2CameraAvailabilityMonitor(ws6Var, threads, mb4Var);
    }

    @Override // defpackage.ws6
    public Camera2CameraAvailabilityMonitor get() {
        return newInstance(this.cameraManagerProvider, this.threadsProvider.get(), this.cameraPipeJobProvider.get());
    }
}
