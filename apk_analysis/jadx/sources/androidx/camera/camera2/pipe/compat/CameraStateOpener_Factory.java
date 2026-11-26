package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateOpener_Factory implements xs6 {
    private final xs6<Camera2MetadataProvider> camera2MetadataProvider;
    private final xs6<Camera2Quirks> camera2QuirksProvider;
    private final xs6<CameraErrorListener> cameraErrorListenerProvider;
    private final xs6<CameraPipe.CameraInteropConfig> cameraInteropConfigProvider;
    private final xs6<CameraOpener> cameraOpenerProvider;
    private final xs6<Threads> threadsProvider;
    private final xs6<TimeSource> timeSourceProvider;

    private CameraStateOpener_Factory(xs6<CameraOpener> xs6Var, xs6<Camera2MetadataProvider> xs6Var2, xs6<CameraErrorListener> xs6Var3, xs6<Camera2Quirks> xs6Var4, xs6<TimeSource> xs6Var5, xs6<CameraPipe.CameraInteropConfig> xs6Var6, xs6<Threads> xs6Var7) {
        this.cameraOpenerProvider = xs6Var;
        this.camera2MetadataProvider = xs6Var2;
        this.cameraErrorListenerProvider = xs6Var3;
        this.camera2QuirksProvider = xs6Var4;
        this.timeSourceProvider = xs6Var5;
        this.cameraInteropConfigProvider = xs6Var6;
        this.threadsProvider = xs6Var7;
    }

    public static CameraStateOpener_Factory create(xs6<CameraOpener> xs6Var, xs6<Camera2MetadataProvider> xs6Var2, xs6<CameraErrorListener> xs6Var3, xs6<Camera2Quirks> xs6Var4, xs6<TimeSource> xs6Var5, xs6<CameraPipe.CameraInteropConfig> xs6Var6, xs6<Threads> xs6Var7) {
        return new CameraStateOpener_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7);
    }

    public static CameraStateOpener newInstance(CameraOpener cameraOpener, Camera2MetadataProvider camera2MetadataProvider, CameraErrorListener cameraErrorListener, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        return new CameraStateOpener(cameraOpener, camera2MetadataProvider, cameraErrorListener, camera2Quirks, timeSource, cameraInteropConfig, threads);
    }

    @Override // defpackage.ws6
    public CameraStateOpener get() {
        return newInstance(this.cameraOpenerProvider.get(), this.camera2MetadataProvider.get(), this.cameraErrorListenerProvider.get(), this.camera2QuirksProvider.get(), this.timeSourceProvider.get(), this.cameraInteropConfigProvider.get(), this.threadsProvider.get());
    }
}
