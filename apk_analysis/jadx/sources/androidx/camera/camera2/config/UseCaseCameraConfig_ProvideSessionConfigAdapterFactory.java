package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraConfig_ProvideSessionConfigAdapterFactory implements xs6 {
    private final UseCaseCameraConfig module;

    private UseCaseCameraConfig_ProvideSessionConfigAdapterFactory(UseCaseCameraConfig useCaseCameraConfig) {
        this.module = useCaseCameraConfig;
    }

    public static UseCaseCameraConfig_ProvideSessionConfigAdapterFactory create(UseCaseCameraConfig useCaseCameraConfig) {
        return new UseCaseCameraConfig_ProvideSessionConfigAdapterFactory(useCaseCameraConfig);
    }

    public static SessionConfigAdapter provideSessionConfigAdapter(UseCaseCameraConfig useCaseCameraConfig) {
        SessionConfigAdapter sessionConfigAdapterProvideSessionConfigAdapter = useCaseCameraConfig.provideSessionConfigAdapter();
        te6.b(sessionConfigAdapterProvideSessionConfigAdapter);
        return sessionConfigAdapterProvideSessionConfigAdapter;
    }

    @Override // defpackage.ws6
    public SessionConfigAdapter get() {
        return provideSessionConfigAdapter(this.module);
    }
}
