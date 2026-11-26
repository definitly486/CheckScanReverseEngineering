package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.SurfaceTracker;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideSurfaceGraphFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideSurfaceGraphFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideSurfaceGraphFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideSurfaceGraphFactory(camera2ControllerConfig);
    }

    public static SurfaceTracker provideSurfaceGraph(Camera2ControllerConfig camera2ControllerConfig) {
        SurfaceTracker surfaceTrackerProvideSurfaceGraph = camera2ControllerConfig.provideSurfaceGraph();
        te6.b(surfaceTrackerProvideSurfaceGraph);
        return surfaceTrackerProvideSurfaceGraph;
    }

    @Override // defpackage.ws6
    public SurfaceTracker get() {
        return provideSurfaceGraph(this.module);
    }
}
