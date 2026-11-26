package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class State3AControl_Factory implements xs6 {
    private final xs6<AutoFlashAEModeDisabler> aeModeDisablerProvider;
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private State3AControl_Factory(xs6<CameraProperties> xs6Var, xs6<AutoFlashAEModeDisabler> xs6Var2, xs6<UseCaseThreads> xs6Var3) {
        this.cameraPropertiesProvider = xs6Var;
        this.aeModeDisablerProvider = xs6Var2;
        this.threadsProvider = xs6Var3;
    }

    public static State3AControl_Factory create(xs6<CameraProperties> xs6Var, xs6<AutoFlashAEModeDisabler> xs6Var2, xs6<UseCaseThreads> xs6Var3) {
        return new State3AControl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static State3AControl newInstance(CameraProperties cameraProperties, AutoFlashAEModeDisabler autoFlashAEModeDisabler, UseCaseThreads useCaseThreads) {
        return new State3AControl(cameraProperties, autoFlashAEModeDisabler, useCaseThreads);
    }

    @Override // defpackage.ws6
    public State3AControl get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.aeModeDisablerProvider.get(), this.threadsProvider.get());
    }
}
