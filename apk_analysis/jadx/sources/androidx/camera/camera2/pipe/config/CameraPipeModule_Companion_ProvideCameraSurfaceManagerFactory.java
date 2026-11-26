package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraSurfaceManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory implements xs6 {

    public static final class InstanceHolder {
        static final CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory INSTANCE = new CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory();

        private InstanceHolder() {
        }
    }

    public static CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CameraSurfaceManager provideCameraSurfaceManager() {
        CameraSurfaceManager cameraSurfaceManagerProvideCameraSurfaceManager = CameraPipeModule.Companion.provideCameraSurfaceManager();
        te6.b(cameraSurfaceManagerProvideCameraSurfaceManager);
        return cameraSurfaceManagerProvideCameraSurfaceManager;
    }

    @Override // defpackage.ws6
    public CameraSurfaceManager get() {
        return provideCameraSurfaceManager();
    }
}
