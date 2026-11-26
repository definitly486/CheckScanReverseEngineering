package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2MetadataCache_Factory implements xs6 {
    private final xs6<CameraPipe.CameraMetadataConfig> cameraMetadataConfigProvider;
    private final xs6<Context> cameraPipeContextProvider;
    private final xs6<Permissions> permissionsProvider;
    private final xs6<Threads> threadsProvider;
    private final xs6<TimeSource> timeSourceProvider;

    private Camera2MetadataCache_Factory(xs6<Context> xs6Var, xs6<Threads> xs6Var2, xs6<Permissions> xs6Var3, xs6<CameraPipe.CameraMetadataConfig> xs6Var4, xs6<TimeSource> xs6Var5) {
        this.cameraPipeContextProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.permissionsProvider = xs6Var3;
        this.cameraMetadataConfigProvider = xs6Var4;
        this.timeSourceProvider = xs6Var5;
    }

    public static Camera2MetadataCache_Factory create(xs6<Context> xs6Var, xs6<Threads> xs6Var2, xs6<Permissions> xs6Var3, xs6<CameraPipe.CameraMetadataConfig> xs6Var4, xs6<TimeSource> xs6Var5) {
        return new Camera2MetadataCache_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static Camera2MetadataCache newInstance(Context context, Threads threads, Permissions permissions, CameraPipe.CameraMetadataConfig cameraMetadataConfig, TimeSource timeSource) {
        return new Camera2MetadataCache(context, threads, permissions, cameraMetadataConfig, timeSource);
    }

    @Override // defpackage.ws6
    public Camera2MetadataCache get() {
        return newInstance(this.cameraPipeContextProvider.get(), this.threadsProvider.get(), this.permissionsProvider.get(), this.cameraMetadataConfigProvider.get(), this.timeSourceProvider.get());
    }
}
