package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphConfigModule {
    private final CameraGraphId cameraGraphId;
    private final CameraGraph.Config config;

    public CameraGraphConfigModule(CameraGraph.Config config, CameraGraphId cameraGraphId) {
        config.getClass();
        cameraGraphId.getClass();
        this.config = config;
        this.cameraGraphId = cameraGraphId;
    }

    public final CameraGraph.Config provideCameraGraphConfig() {
        return this.config;
    }

    public final CameraGraphId provideCameraGraphId() {
        return this.cameraGraphId;
    }
}
