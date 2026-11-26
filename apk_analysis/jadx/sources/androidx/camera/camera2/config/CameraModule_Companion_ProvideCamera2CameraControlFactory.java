package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.interop.Camera2CameraControl;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideCamera2CameraControlFactory implements xs6 {
    private final xs6<Camera2CameraControlCompat> compatProvider;
    private final xs6<ComboRequestListener> requestListenerProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private CameraModule_Companion_ProvideCamera2CameraControlFactory(xs6<Camera2CameraControlCompat> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<ComboRequestListener> xs6Var3) {
        this.compatProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.requestListenerProvider = xs6Var3;
    }

    public static CameraModule_Companion_ProvideCamera2CameraControlFactory create(xs6<Camera2CameraControlCompat> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<ComboRequestListener> xs6Var3) {
        return new CameraModule_Companion_ProvideCamera2CameraControlFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static Camera2CameraControl provideCamera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        Camera2CameraControl camera2CameraControlProvideCamera2CameraControl = CameraModule.Companion.provideCamera2CameraControl(camera2CameraControlCompat, useCaseThreads, comboRequestListener);
        te6.b(camera2CameraControlProvideCamera2CameraControl);
        return camera2CameraControlProvideCamera2CameraControl;
    }

    @Override // defpackage.ws6
    public Camera2CameraControl get() {
        return provideCamera2CameraControl(this.compatProvider.get(), this.threadsProvider.get(), this.requestListenerProvider.get());
    }
}
