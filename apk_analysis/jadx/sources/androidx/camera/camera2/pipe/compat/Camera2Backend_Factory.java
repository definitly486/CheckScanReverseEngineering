package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import androidx.camera.camera2.pipe.config.Camera2ControllerComponent;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Backend_Factory implements xs6 {
    private final xs6<Camera2ControllerComponent.Builder> camera2CameraControllerComponentProvider;
    private final xs6<Camera2DeviceCache> camera2DeviceCacheProvider;
    private final xs6<Camera2DeviceManager> camera2DeviceManagerProvider;
    private final xs6<Camera2MetadataCache> camera2MetadataCacheProvider;
    private final xs6<Context> cameraPipeContextProvider;
    private final xs6<Threads> threadsProvider;

    private Camera2Backend_Factory(xs6<Threads> xs6Var, xs6<Camera2DeviceCache> xs6Var2, xs6<Camera2MetadataCache> xs6Var3, xs6<Camera2DeviceManager> xs6Var4, xs6<Camera2ControllerComponent.Builder> xs6Var5, xs6<Context> xs6Var6) {
        this.threadsProvider = xs6Var;
        this.camera2DeviceCacheProvider = xs6Var2;
        this.camera2MetadataCacheProvider = xs6Var3;
        this.camera2DeviceManagerProvider = xs6Var4;
        this.camera2CameraControllerComponentProvider = xs6Var5;
        this.cameraPipeContextProvider = xs6Var6;
    }

    public static Camera2Backend_Factory create(xs6<Threads> xs6Var, xs6<Camera2DeviceCache> xs6Var2, xs6<Camera2MetadataCache> xs6Var3, xs6<Camera2DeviceManager> xs6Var4, xs6<Camera2ControllerComponent.Builder> xs6Var5, xs6<Context> xs6Var6) {
        return new Camera2Backend_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6);
    }

    public static Camera2Backend newInstance(Threads threads, Camera2DeviceCache camera2DeviceCache, Camera2MetadataCache camera2MetadataCache, Camera2DeviceManager camera2DeviceManager, Camera2ControllerComponent.Builder builder, Context context) {
        return new Camera2Backend(threads, camera2DeviceCache, camera2MetadataCache, camera2DeviceManager, builder, context);
    }

    @Override // defpackage.ws6
    public Camera2Backend get() {
        return newInstance(this.threadsProvider.get(), this.camera2DeviceCacheProvider.get(), this.camera2MetadataCacheProvider.get(), this.camera2DeviceManagerProvider.get(), this.camera2CameraControllerComponentProvider.get(), this.cameraPipeContextProvider.get());
    }
}
