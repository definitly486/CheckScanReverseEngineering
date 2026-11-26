package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeConfigModule_ProvideCameraPipeConfigFactory implements xs6 {
    private final CameraPipeConfigModule module;

    private CameraPipeConfigModule_ProvideCameraPipeConfigFactory(CameraPipeConfigModule cameraPipeConfigModule) {
        this.module = cameraPipeConfigModule;
    }

    public static CameraPipeConfigModule_ProvideCameraPipeConfigFactory create(CameraPipeConfigModule cameraPipeConfigModule) {
        return new CameraPipeConfigModule_ProvideCameraPipeConfigFactory(cameraPipeConfigModule);
    }

    public static CameraPipe.Config provideCameraPipeConfig(CameraPipeConfigModule cameraPipeConfigModule) {
        CameraPipe.Config configProvideCameraPipeConfig = cameraPipeConfigModule.provideCameraPipeConfig();
        te6.b(configProvideCameraPipeConfig);
        return configProvideCameraPipeConfig;
    }

    @Override // defpackage.ws6
    public CameraPipe.Config get() {
        return provideCameraPipeConfig(this.module);
    }
}
