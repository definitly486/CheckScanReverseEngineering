package androidx.camera.camera2.config;

import android.content.Context;
import androidx.camera.camera2.impl.DisplayInfoManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideDisplayInfoManagerFactory implements xs6 {
    private final xs6<Context> contextProvider;
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideDisplayInfoManagerFactory(CameraAppConfig cameraAppConfig, xs6<Context> xs6Var) {
        this.module = cameraAppConfig;
        this.contextProvider = xs6Var;
    }

    public static CameraAppConfig_ProvideDisplayInfoManagerFactory create(CameraAppConfig cameraAppConfig, xs6<Context> xs6Var) {
        return new CameraAppConfig_ProvideDisplayInfoManagerFactory(cameraAppConfig, xs6Var);
    }

    public static DisplayInfoManager provideDisplayInfoManager(CameraAppConfig cameraAppConfig, Context context) {
        DisplayInfoManager displayInfoManagerProvideDisplayInfoManager = cameraAppConfig.provideDisplayInfoManager(context);
        te6.b(displayInfoManagerProvideDisplayInfoManager);
        return displayInfoManagerProvideDisplayInfoManager;
    }

    @Override // defpackage.ws6
    public DisplayInfoManager get() {
        return provideDisplayInfoManager(this.module, this.contextProvider.get());
    }
}
