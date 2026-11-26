package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideFrameDistributorFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideFrameDistributorFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideFrameDistributorFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideFrameDistributorFactory(frameGraphConfigModule);
    }

    public static FrameDistributor provideFrameDistributor(FrameGraphConfigModule frameGraphConfigModule) {
        FrameDistributor frameDistributorProvideFrameDistributor = frameGraphConfigModule.provideFrameDistributor();
        te6.b(frameDistributorProvideFrameDistributor);
        return frameDistributorProvideFrameDistributor;
    }

    @Override // defpackage.ws6
    public FrameDistributor get() {
        return provideFrameDistributor(this.module);
    }
}
