package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.FrameGraph;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideCameraGraphConfigFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideCameraGraphConfigFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideCameraGraphConfigFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideCameraGraphConfigFactory(frameGraphConfigModule);
    }

    public static FrameGraph.Config provideCameraGraphConfig(FrameGraphConfigModule frameGraphConfigModule) {
        FrameGraph.Config configProvideCameraGraphConfig = frameGraphConfigModule.provideCameraGraphConfig();
        te6.b(configProvideCameraGraphConfig);
        return configProvideCameraGraphConfig;
    }

    @Override // defpackage.ws6
    public FrameGraph.Config get() {
        return provideCameraGraphConfig(this.module);
    }
}
