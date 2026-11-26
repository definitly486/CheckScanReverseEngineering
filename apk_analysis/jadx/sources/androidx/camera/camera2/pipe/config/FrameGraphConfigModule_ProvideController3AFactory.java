package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.Controller3A;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideController3AFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideController3AFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideController3AFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideController3AFactory(frameGraphConfigModule);
    }

    public static Controller3A provideController3A(FrameGraphConfigModule frameGraphConfigModule) {
        Controller3A controller3AProvideController3A = frameGraphConfigModule.provideController3A();
        te6.b(controller3AProvideController3A);
        return controller3AProvideController3A;
    }

    @Override // defpackage.ws6
    public Controller3A get() {
        return provideController3A(this.module);
    }
}
