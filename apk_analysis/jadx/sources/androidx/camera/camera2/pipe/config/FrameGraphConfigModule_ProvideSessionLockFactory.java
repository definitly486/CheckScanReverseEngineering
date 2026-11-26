package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideSessionLockFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideSessionLockFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideSessionLockFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideSessionLockFactory(frameGraphConfigModule);
    }

    public static GraphSessionLock provideSessionLock(FrameGraphConfigModule frameGraphConfigModule) {
        GraphSessionLock graphSessionLockProvideSessionLock = frameGraphConfigModule.provideSessionLock();
        te6.b(graphSessionLockProvideSessionLock);
        return graphSessionLockProvideSessionLock;
    }

    @Override // defpackage.ws6
    public GraphSessionLock get() {
        return provideSessionLock(this.module);
    }
}
