package androidx.camera.camera2.impl;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class StillCaptureRequestControl_Factory implements xs6 {
    private final xs6<FlashControl> flashControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private StillCaptureRequestControl_Factory(xs6<FlashControl> xs6Var, xs6<UseCaseThreads> xs6Var2) {
        this.flashControlProvider = xs6Var;
        this.threadsProvider = xs6Var2;
    }

    public static StillCaptureRequestControl_Factory create(xs6<FlashControl> xs6Var, xs6<UseCaseThreads> xs6Var2) {
        return new StillCaptureRequestControl_Factory(xs6Var, xs6Var2);
    }

    public static StillCaptureRequestControl newInstance(FlashControl flashControl, UseCaseThreads useCaseThreads) {
        return new StillCaptureRequestControl(flashControl, useCaseThreads);
    }

    @Override // defpackage.ws6
    public StillCaptureRequestControl get() {
        return newInstance(this.flashControlProvider.get(), this.threadsProvider.get());
    }
}
