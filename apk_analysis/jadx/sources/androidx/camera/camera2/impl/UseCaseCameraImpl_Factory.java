package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.core.impl.SessionProcessor;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraImpl_Factory implements xs6 {
    private final xs6<CapturePipeline> capturePipelineProvider;
    private final xs6<UseCaseCameraRequestControl> requestControlProvider;
    private final xs6<SessionConfigAdapter> sessionConfigAdapterProvider;
    private final xs6<SessionProcessor> sessionProcessorProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<UseCaseGraphContext> useCaseGraphContextProvider;
    private final xs6<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;

    private UseCaseCameraImpl_Factory(xs6<UseCaseGraphContext> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<SessionProcessor> xs6Var3, xs6<UseCaseCameraRequestControl> xs6Var4, xs6<UseCaseSurfaceManager> xs6Var5, xs6<SessionConfigAdapter> xs6Var6, xs6<CapturePipeline> xs6Var7) {
        this.useCaseGraphContextProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.sessionProcessorProvider = xs6Var3;
        this.requestControlProvider = xs6Var4;
        this.useCaseSurfaceManagerProvider = xs6Var5;
        this.sessionConfigAdapterProvider = xs6Var6;
        this.capturePipelineProvider = xs6Var7;
    }

    public static UseCaseCameraImpl_Factory create(xs6<UseCaseGraphContext> xs6Var, xs6<UseCaseThreads> xs6Var2, xs6<SessionProcessor> xs6Var3, xs6<UseCaseCameraRequestControl> xs6Var4, xs6<UseCaseSurfaceManager> xs6Var5, xs6<SessionConfigAdapter> xs6Var6, xs6<CapturePipeline> xs6Var7) {
        return new UseCaseCameraImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7);
    }

    public static UseCaseCameraImpl newInstance(UseCaseGraphContext useCaseGraphContext, UseCaseThreads useCaseThreads, SessionProcessor sessionProcessor, UseCaseCameraRequestControl useCaseCameraRequestControl, ws6<UseCaseSurfaceManager> ws6Var, ws6<SessionConfigAdapter> ws6Var2, ws6<CapturePipeline> ws6Var3) {
        return new UseCaseCameraImpl(useCaseGraphContext, useCaseThreads, sessionProcessor, useCaseCameraRequestControl, ws6Var, ws6Var2, ws6Var3);
    }

    @Override // defpackage.ws6
    public UseCaseCameraImpl get() {
        return newInstance(this.useCaseGraphContextProvider.get(), this.threadsProvider.get(), this.sessionProcessorProvider.get(), this.requestControlProvider.get(), this.useCaseSurfaceManagerProvider, this.sessionConfigAdapterProvider, this.capturePipelineProvider);
    }
}
