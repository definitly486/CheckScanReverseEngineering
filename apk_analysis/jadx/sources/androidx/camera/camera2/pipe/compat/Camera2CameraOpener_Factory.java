package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraOpener_Factory implements xs6 {
    private final xs6<CameraManager> cameraManagerProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2CameraOpener_Factory(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2) {
        this.cameraManagerProvider = xs6Var;
        this.threadsProvider = xs6Var2;
    }

    public static Camera2CameraOpener_Factory create(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2) {
        return new Camera2CameraOpener_Factory(xs6Var, xs6Var2);
    }

    public static Camera2CameraOpener newInstance(ws6<CameraManager> ws6Var, Threads threads) {
        return new Camera2CameraOpener(ws6Var, threads);
    }

    @Override // defpackage.ws6
    public Camera2CameraOpener get() {
        return newInstance(this.cameraManagerProvider, this.threadsProvider.get());
    }
}
