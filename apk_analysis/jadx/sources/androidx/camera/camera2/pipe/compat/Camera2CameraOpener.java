package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.e02;
import defpackage.j59;
import defpackage.ws6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraOpener implements CameraOpener {
    private final ws6<CameraManager> cameraManager;
    private final Threads threads;

    public Camera2CameraOpener(ws6<CameraManager> ws6Var, Threads threads) {
        ws6Var.getClass();
        threads.getClass();
        this.cameraManager = ws6Var;
        this.threads = threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraOpener
    /* JADX INFO: renamed from: openCamera-RzXb1QE, reason: not valid java name */
    public Object mo758openCameraRzXb1QE(String str, CameraDevice.StateCallback stateCallback, e02<? super j59> e02Var) {
        CameraManager cameraManager = this.cameraManager.get();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m357toStringimpl(str)) + "#openCamera");
            if (Build.VERSION.SDK_INT >= 28) {
                cameraManager.getClass();
                Api28Compat.openCamera(cameraManager, str, this.threads.getCamera2Executor(), stateCallback);
            } else {
                cameraManager.openCamera(str, stateCallback, this.threads.getCamera2Handler());
            }
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            Trace.endSection();
        }
    }
}
