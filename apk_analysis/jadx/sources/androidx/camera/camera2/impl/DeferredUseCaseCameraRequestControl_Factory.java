package androidx.camera.camera2.impl;

import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class DeferredUseCaseCameraRequestControl_Factory implements xs6 {
    private final xs6<UseCaseCameraRequestControlImpl> implProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private DeferredUseCaseCameraRequestControl_Factory(xs6<UseCaseCameraRequestControlImpl> xs6Var, xs6<UseCaseThreads> xs6Var2) {
        this.implProvider = xs6Var;
        this.threadsProvider = xs6Var2;
    }

    public static DeferredUseCaseCameraRequestControl_Factory create(xs6<UseCaseCameraRequestControlImpl> xs6Var, xs6<UseCaseThreads> xs6Var2) {
        return new DeferredUseCaseCameraRequestControl_Factory(xs6Var, xs6Var2);
    }

    public static DeferredUseCaseCameraRequestControl newInstance(ws6<UseCaseCameraRequestControlImpl> ws6Var, UseCaseThreads useCaseThreads) {
        return new DeferredUseCaseCameraRequestControl(ws6Var, useCaseThreads);
    }

    @Override // defpackage.ws6
    public DeferredUseCaseCameraRequestControl get() {
        return newInstance(this.implProvider, this.threadsProvider.get());
    }
}
