package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.te6;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureSessionsModule_ProvideSessionFactoryFactory implements xs6 {
    private final xs6<AndroidExtensionSessionFactory> androidExtensionProvider;
    private final xs6<AndroidMHighSpeedSessionFactory> androidMHighSpeedProvider;
    private final xs6<AndroidMSessionFactory> androidMProvider;
    private final xs6<AndroidNSessionFactory> androidNProvider;
    private final xs6<AndroidPSessionFactory> androidPProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;

    private Camera2CaptureSessionsModule_ProvideSessionFactoryFactory(xs6<AndroidMSessionFactory> xs6Var, xs6<AndroidMHighSpeedSessionFactory> xs6Var2, xs6<AndroidNSessionFactory> xs6Var3, xs6<AndroidPSessionFactory> xs6Var4, xs6<AndroidExtensionSessionFactory> xs6Var5, xs6<CameraGraph.Config> xs6Var6) {
        this.androidMProvider = xs6Var;
        this.androidMHighSpeedProvider = xs6Var2;
        this.androidNProvider = xs6Var3;
        this.androidPProvider = xs6Var4;
        this.androidExtensionProvider = xs6Var5;
        this.graphConfigProvider = xs6Var6;
    }

    public static Camera2CaptureSessionsModule_ProvideSessionFactoryFactory create(xs6<AndroidMSessionFactory> xs6Var, xs6<AndroidMHighSpeedSessionFactory> xs6Var2, xs6<AndroidNSessionFactory> xs6Var3, xs6<AndroidPSessionFactory> xs6Var4, xs6<AndroidExtensionSessionFactory> xs6Var5, xs6<CameraGraph.Config> xs6Var6) {
        return new Camera2CaptureSessionsModule_ProvideSessionFactoryFactory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6);
    }

    public static CaptureSessionFactory provideSessionFactory(ws6<AndroidMSessionFactory> ws6Var, ws6<AndroidMHighSpeedSessionFactory> ws6Var2, ws6<AndroidNSessionFactory> ws6Var3, ws6<AndroidPSessionFactory> ws6Var4, ws6<AndroidExtensionSessionFactory> ws6Var5, CameraGraph.Config config) {
        CaptureSessionFactory captureSessionFactoryProvideSessionFactory = Camera2CaptureSessionsModule.INSTANCE.provideSessionFactory(ws6Var, ws6Var2, ws6Var3, ws6Var4, ws6Var5, config);
        te6.b(captureSessionFactoryProvideSessionFactory);
        return captureSessionFactoryProvideSessionFactory;
    }

    @Override // defpackage.ws6
    public CaptureSessionFactory get() {
        return provideSessionFactory(this.androidMProvider, this.androidMHighSpeedProvider, this.androidNProvider, this.androidPProvider, this.androidExtensionProvider, this.graphConfigProvider.get());
    }
}
