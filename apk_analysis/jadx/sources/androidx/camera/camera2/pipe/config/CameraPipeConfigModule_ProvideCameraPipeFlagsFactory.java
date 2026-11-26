package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeConfigModule_ProvideCameraPipeFlagsFactory implements xs6 {
    private final CameraPipeConfigModule module;

    private CameraPipeConfigModule_ProvideCameraPipeFlagsFactory(CameraPipeConfigModule cameraPipeConfigModule) {
        this.module = cameraPipeConfigModule;
    }

    public static CameraPipeConfigModule_ProvideCameraPipeFlagsFactory create(CameraPipeConfigModule cameraPipeConfigModule) {
        return new CameraPipeConfigModule_ProvideCameraPipeFlagsFactory(cameraPipeConfigModule);
    }

    public static CameraPipe.Flags provideCameraPipeFlags(CameraPipeConfigModule cameraPipeConfigModule) {
        CameraPipe.Flags flagsProvideCameraPipeFlags = cameraPipeConfigModule.provideCameraPipeFlags();
        te6.b(flagsProvideCameraPipeFlags);
        return flagsProvideCameraPipeFlags;
    }

    @Override // defpackage.ws6
    public CameraPipe.Flags get() {
        return provideCameraPipeFlags(this.module);
    }
}
