package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppModule_Companion_ProvideCameraDevicesFactory implements xs6 {
    private final xs6<CameraPipe> cameraPipeProvider;

    private CameraAppModule_Companion_ProvideCameraDevicesFactory(xs6<CameraPipe> xs6Var) {
        this.cameraPipeProvider = xs6Var;
    }

    public static CameraAppModule_Companion_ProvideCameraDevicesFactory create(xs6<CameraPipe> xs6Var) {
        return new CameraAppModule_Companion_ProvideCameraDevicesFactory(xs6Var);
    }

    public static CameraDevices provideCameraDevices(CameraPipe cameraPipe) {
        CameraDevices cameraDevicesProvideCameraDevices = CameraAppModule.Companion.provideCameraDevices(cameraPipe);
        te6.b(cameraDevicesProvideCameraDevices);
        return cameraDevicesProvideCameraDevices;
    }

    @Override // defpackage.ws6
    public CameraDevices get() {
        return provideCameraDevices(this.cameraPipeProvider.get());
    }
}
