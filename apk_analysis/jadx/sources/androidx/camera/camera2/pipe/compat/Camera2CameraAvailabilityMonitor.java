package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.config.CameraPipeJob;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.e02;
import defpackage.hd3;
import defpackage.mb4;
import defpackage.s0;
import defpackage.ws6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraAvailabilityMonitor implements CameraAvailabilityMonitor {
    private final hd3<CameraId> availableCameraFlow;
    private final ws6<CameraManager> cameraManager;
    private final mb4 cameraPipeJob;
    private final Threads threads;

    public Camera2CameraAvailabilityMonitor(ws6<CameraManager> ws6Var, Threads threads, @CameraPipeJob mb4 mb4Var) {
        ws6Var.getClass();
        threads.getClass();
        mb4Var.getClass();
        this.cameraManager = ws6Var;
        this.threads = threads;
        this.cameraPipeJob = mb4Var;
        this.availableCameraFlow = s0.a(new Camera2CameraAvailabilityMonitor$availableCameraFlow$1(this, null));
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraAvailabilityMonitor
    /* JADX INFO: renamed from: startMonitoring-0r8Bogc, reason: not valid java name */
    public Object mo755startMonitoring0r8Bogc(String str, e02<? super CameraAvailabilityMonitor.Session> e02Var) {
        return new Camera2CameraAvailabilityMonitor$startMonitoring$2(this, str);
    }
}
