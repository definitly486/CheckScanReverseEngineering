package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeConfigModule {
    private final CameraPipe.Config config;

    public CameraPipeConfigModule(CameraPipe.Config config) {
        config.getClass();
        this.config = config;
    }

    public final CameraPipe.CameraInteropConfig provideCameraInteropConfig(CameraPipe.Config config) {
        config.getClass();
        return config.getCameraInteropConfig();
    }

    public final CameraPipe.Config provideCameraPipeConfig() {
        return this.config;
    }

    public final CameraPipe.Flags provideCameraPipeFlags() {
        return this.config.getFlags();
    }
}
