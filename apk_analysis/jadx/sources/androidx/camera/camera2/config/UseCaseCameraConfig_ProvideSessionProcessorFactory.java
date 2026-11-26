package androidx.camera.camera2.config;

import androidx.camera.core.impl.SessionProcessor;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraConfig_ProvideSessionProcessorFactory implements xs6 {
    private final UseCaseCameraConfig module;

    private UseCaseCameraConfig_ProvideSessionProcessorFactory(UseCaseCameraConfig useCaseCameraConfig) {
        this.module = useCaseCameraConfig;
    }

    public static UseCaseCameraConfig_ProvideSessionProcessorFactory create(UseCaseCameraConfig useCaseCameraConfig) {
        return new UseCaseCameraConfig_ProvideSessionProcessorFactory(useCaseCameraConfig);
    }

    public static SessionProcessor provideSessionProcessor(UseCaseCameraConfig useCaseCameraConfig) {
        return useCaseCameraConfig.provideSessionProcessor();
    }

    @Override // defpackage.ws6
    public SessionProcessor get() {
        return provideSessionProcessor(this.module);
    }
}
