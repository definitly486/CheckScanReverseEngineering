package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import defpackage.mb4;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceCache_Factory implements xs6 {
    private final xs6<CameraDeviceSetupCompatFactory> cameraDeviceSetupCompatFactoryProvider;
    private final xs6<CameraErrorListener> cameraErrorListenerProvider;
    private final xs6<CameraManager> cameraManagerProvider;
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<CameraPipeLifetime> cameraPipeLifetimeProvider;
    private final xs6<Context> contextProvider;
    private final xs6<PackageManager> packageManagerProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2DeviceCache_Factory(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<Context> xs6Var3, xs6<PackageManager> xs6Var4, xs6<CameraErrorListener> xs6Var5, xs6<CameraDeviceSetupCompatFactory> xs6Var6, xs6<CameraPipeLifetime> xs6Var7, xs6<mb4> xs6Var8) {
        this.cameraManagerProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.contextProvider = xs6Var3;
        this.packageManagerProvider = xs6Var4;
        this.cameraErrorListenerProvider = xs6Var5;
        this.cameraDeviceSetupCompatFactoryProvider = xs6Var6;
        this.cameraPipeLifetimeProvider = xs6Var7;
        this.cameraPipeJobProvider = xs6Var8;
    }

    public static Camera2DeviceCache_Factory create(xs6<CameraManager> xs6Var, xs6<Threads> xs6Var2, xs6<Context> xs6Var3, xs6<PackageManager> xs6Var4, xs6<CameraErrorListener> xs6Var5, xs6<CameraDeviceSetupCompatFactory> xs6Var6, xs6<CameraPipeLifetime> xs6Var7, xs6<mb4> xs6Var8) {
        return new Camera2DeviceCache_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8);
    }

    public static Camera2DeviceCache newInstance(ws6<CameraManager> ws6Var, Threads threads, Context context, PackageManager packageManager, CameraErrorListener cameraErrorListener, ws6<CameraDeviceSetupCompatFactory> ws6Var2, CameraPipeLifetime cameraPipeLifetime, mb4 mb4Var) {
        return new Camera2DeviceCache(ws6Var, threads, context, packageManager, cameraErrorListener, ws6Var2, cameraPipeLifetime, mb4Var);
    }

    @Override // defpackage.ws6
    public Camera2DeviceCache get() {
        return newInstance(this.cameraManagerProvider, this.threadsProvider.get(), this.contextProvider.get(), this.packageManagerProvider.get(), this.cameraErrorListenerProvider.get(), this.cameraDeviceSetupCompatFactoryProvider, this.cameraPipeLifetimeProvider.get(), this.cameraPipeJobProvider.get());
    }
}
