package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraphId;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphConfigModule_ProvideCameraGraphIdFactory implements xs6 {
    private final CameraGraphConfigModule module;

    private CameraGraphConfigModule_ProvideCameraGraphIdFactory(CameraGraphConfigModule cameraGraphConfigModule) {
        this.module = cameraGraphConfigModule;
    }

    public static CameraGraphConfigModule_ProvideCameraGraphIdFactory create(CameraGraphConfigModule cameraGraphConfigModule) {
        return new CameraGraphConfigModule_ProvideCameraGraphIdFactory(cameraGraphConfigModule);
    }

    public static CameraGraphId provideCameraGraphId(CameraGraphConfigModule cameraGraphConfigModule) {
        CameraGraphId cameraGraphIdProvideCameraGraphId = cameraGraphConfigModule.provideCameraGraphId();
        te6.b(cameraGraphIdProvideCameraGraphId);
        return cameraGraphIdProvideCameraGraphId;
    }

    @Override // defpackage.ws6
    public CameraGraphId get() {
        return provideCameraGraphId(this.module);
    }
}
