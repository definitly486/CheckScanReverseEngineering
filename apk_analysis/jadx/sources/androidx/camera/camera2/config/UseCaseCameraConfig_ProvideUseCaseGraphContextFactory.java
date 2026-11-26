package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.CameraStateAdapter;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraConfig_ProvideUseCaseGraphContextFactory implements xs6 {
    private final xs6<CameraStateAdapter> cameraStateAdapterProvider;
    private final UseCaseCameraConfig module;

    private UseCaseCameraConfig_ProvideUseCaseGraphContextFactory(UseCaseCameraConfig useCaseCameraConfig, xs6<CameraStateAdapter> xs6Var) {
        this.module = useCaseCameraConfig;
        this.cameraStateAdapterProvider = xs6Var;
    }

    public static UseCaseCameraConfig_ProvideUseCaseGraphContextFactory create(UseCaseCameraConfig useCaseCameraConfig, xs6<CameraStateAdapter> xs6Var) {
        return new UseCaseCameraConfig_ProvideUseCaseGraphContextFactory(useCaseCameraConfig, xs6Var);
    }

    public static UseCaseGraphContext provideUseCaseGraphContext(UseCaseCameraConfig useCaseCameraConfig, CameraStateAdapter cameraStateAdapter) {
        UseCaseGraphContext useCaseGraphContextProvideUseCaseGraphContext = useCaseCameraConfig.provideUseCaseGraphContext(cameraStateAdapter);
        te6.b(useCaseGraphContextProvideUseCaseGraphContext);
        return useCaseGraphContextProvideUseCaseGraphContext;
    }

    @Override // defpackage.ws6
    public UseCaseGraphContext get() {
        return provideUseCaseGraphContext(this.module, this.cameraStateAdapterProvider.get());
    }
}
