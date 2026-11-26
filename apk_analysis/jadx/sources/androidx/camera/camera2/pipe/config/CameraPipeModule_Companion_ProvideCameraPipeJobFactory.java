package androidx.camera.camera2.pipe.config;

import defpackage.mb4;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraPipeJobFactory implements xs6 {

    public static final class InstanceHolder {
        static final CameraPipeModule_Companion_ProvideCameraPipeJobFactory INSTANCE = new CameraPipeModule_Companion_ProvideCameraPipeJobFactory();

        private InstanceHolder() {
        }
    }

    public static CameraPipeModule_Companion_ProvideCameraPipeJobFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static mb4 provideCameraPipeJob() {
        mb4 mb4VarProvideCameraPipeJob = CameraPipeModule.Companion.provideCameraPipeJob();
        te6.b(mb4VarProvideCameraPipeJob);
        return mb4VarProvideCameraPipeJob;
    }

    @Override // defpackage.ws6
    public mb4 get() {
        return provideCameraPipeJob();
    }
}
