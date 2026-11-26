package androidx.camera.camera2.config;

import android.content.Context;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideContextFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideContextFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideContextFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideContextFactory(cameraAppConfig);
    }

    public static Context provideContext(CameraAppConfig cameraAppConfig) {
        Context contextProvideContext = cameraAppConfig.provideContext();
        te6.b(contextProvideContext);
        return contextProvideContext;
    }

    @Override // defpackage.ws6
    public Context get() {
        return provideContext(this.module);
    }
}
