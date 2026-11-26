package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.core.CameraXConfig;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraRequestControlImpl_Factory implements xs6 {
    private final xs6<CameraXConfig> cameraXConfigProvider;
    private final xs6<CapturePipeline> capturePipelineProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<UseCaseCameraState> useCaseCameraStateProvider;
    private final xs6<UseCaseGraphContext> useCaseGraphContextProvider;
    private final xs6<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;

    private UseCaseCameraRequestControlImpl_Factory(xs6<CapturePipeline> xs6Var, xs6<UseCaseCameraState> xs6Var2, xs6<UseCaseGraphContext> xs6Var3, xs6<UseCaseSurfaceManager> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<CameraXConfig> xs6Var6) {
        this.capturePipelineProvider = xs6Var;
        this.useCaseCameraStateProvider = xs6Var2;
        this.useCaseGraphContextProvider = xs6Var3;
        this.useCaseSurfaceManagerProvider = xs6Var4;
        this.threadsProvider = xs6Var5;
        this.cameraXConfigProvider = xs6Var6;
    }

    public static UseCaseCameraRequestControlImpl_Factory create(xs6<CapturePipeline> xs6Var, xs6<UseCaseCameraState> xs6Var2, xs6<UseCaseGraphContext> xs6Var3, xs6<UseCaseSurfaceManager> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<CameraXConfig> xs6Var6) {
        return new UseCaseCameraRequestControlImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6);
    }

    public static UseCaseCameraRequestControlImpl newInstance(ws6<CapturePipeline> ws6Var, ws6<UseCaseCameraState> ws6Var2, UseCaseGraphContext useCaseGraphContext, ws6<UseCaseSurfaceManager> ws6Var3, UseCaseThreads useCaseThreads, CameraXConfig cameraXConfig) {
        return new UseCaseCameraRequestControlImpl(ws6Var, ws6Var2, useCaseGraphContext, ws6Var3, useCaseThreads, cameraXConfig);
    }

    @Override // defpackage.ws6
    public UseCaseCameraRequestControlImpl get() {
        return newInstance(this.capturePipelineProvider, this.useCaseCameraStateProvider, this.useCaseGraphContextProvider.get(), this.useCaseSurfaceManagerProvider, this.threadsProvider.get(), this.cameraXConfigProvider.get());
    }
}
