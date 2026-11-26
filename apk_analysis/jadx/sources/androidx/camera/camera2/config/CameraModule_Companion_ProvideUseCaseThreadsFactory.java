package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.impl.CameraThreadConfig;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraModule_Companion_ProvideUseCaseThreadsFactory implements xs6 {
    private final xs6<CameraConfig> cameraConfigProvider;
    private final xs6<CameraThreadConfig> cameraThreadConfigProvider;

    private CameraModule_Companion_ProvideUseCaseThreadsFactory(xs6<CameraConfig> xs6Var, xs6<CameraThreadConfig> xs6Var2) {
        this.cameraConfigProvider = xs6Var;
        this.cameraThreadConfigProvider = xs6Var2;
    }

    public static CameraModule_Companion_ProvideUseCaseThreadsFactory create(xs6<CameraConfig> xs6Var, xs6<CameraThreadConfig> xs6Var2) {
        return new CameraModule_Companion_ProvideUseCaseThreadsFactory(xs6Var, xs6Var2);
    }

    public static UseCaseThreads provideUseCaseThreads(CameraConfig cameraConfig, CameraThreadConfig cameraThreadConfig) {
        UseCaseThreads useCaseThreadsProvideUseCaseThreads = CameraModule.Companion.provideUseCaseThreads(cameraConfig, cameraThreadConfig);
        te6.b(useCaseThreadsProvideUseCaseThreads);
        return useCaseThreadsProvideUseCaseThreads;
    }

    @Override // defpackage.ws6
    public UseCaseThreads get() {
        return provideUseCaseThreads(this.cameraConfigProvider.get(), this.cameraThreadConfigProvider.get());
    }
}
