package androidx.camera.camera2.pipe.config;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import defpackage.mb4;
import defpackage.te6;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory implements xs6 {
    private final xs6<CameraManager> cameraManagerProvider;
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<CameraGraph.Config> xs6Var3, xs6<mb4> xs6Var4) {
        this.cameraManagerProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.graphConfigProvider = xs6Var3;
        this.cameraPipeJobProvider = xs6Var4;
    }

    public static Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory create(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<CameraGraph.Config> xs6Var3, xs6<mb4> xs6Var4) {
        return new Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static CameraStatusMonitor provideCameraStatusMonitor(ws6<CameraManager> ws6Var, Threads threads, CameraGraph.Config config, mb4 mb4Var) {
        CameraStatusMonitor cameraStatusMonitorProvideCameraStatusMonitor = Camera2ControllerModule.Companion.provideCameraStatusMonitor(ws6Var, threads, config, mb4Var);
        te6.b(cameraStatusMonitorProvideCameraStatusMonitor);
        return cameraStatusMonitorProvideCameraStatusMonitor;
    }

    @Override // defpackage.ws6
    public CameraStatusMonitor get() {
        return provideCameraStatusMonitor(this.cameraManagerProvider, this.threadsProvider.get(), this.graphConfigProvider.get(), this.cameraPipeJobProvider.get());
    }
}
