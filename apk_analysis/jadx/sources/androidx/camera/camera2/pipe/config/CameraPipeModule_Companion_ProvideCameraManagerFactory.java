package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraManagerFactory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;

    private CameraPipeModule_Companion_ProvideCameraManagerFactory(xs6<Context> xs6Var) {
        this.cameraPipeContextProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideCameraManagerFactory create(xs6<Context> xs6Var) {
        return new CameraPipeModule_Companion_ProvideCameraManagerFactory(xs6Var);
    }

    public static CameraManager provideCameraManager(Context context) {
        CameraManager cameraManagerProvideCameraManager = CameraPipeModule.Companion.provideCameraManager(context);
        te6.b(cameraManagerProvideCameraManager);
        return cameraManagerProvideCameraManager;
    }

    @Override // defpackage.ws6
    public CameraManager get() {
        return provideCameraManager(this.cameraPipeContextProvider.get());
    }
}
