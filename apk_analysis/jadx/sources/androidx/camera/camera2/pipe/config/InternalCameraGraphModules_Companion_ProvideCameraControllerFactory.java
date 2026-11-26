package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class InternalCameraGraphModules_Companion_ProvideCameraControllerFactory implements xs6 {
    private final xs6<CameraBackend> cameraBackendProvider;
    private final xs6<CameraContext> cameraContextProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<CameraGraphId> graphIdProvider;
    private final xs6<GraphProcessorImpl> graphProcessorProvider;
    private final xs6<StreamGraph> streamGraphProvider;
    private final xs6<SurfaceTracker> surfaceTrackerProvider;

    private InternalCameraGraphModules_Companion_ProvideCameraControllerFactory(xs6<CameraGraphId> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<CameraBackend> xs6Var3, xs6<CameraContext> xs6Var4, xs6<GraphProcessorImpl> xs6Var5, xs6<StreamGraph> xs6Var6, xs6<SurfaceTracker> xs6Var7) {
        this.graphIdProvider = xs6Var;
        this.graphConfigProvider = xs6Var2;
        this.cameraBackendProvider = xs6Var3;
        this.cameraContextProvider = xs6Var4;
        this.graphProcessorProvider = xs6Var5;
        this.streamGraphProvider = xs6Var6;
        this.surfaceTrackerProvider = xs6Var7;
    }

    public static InternalCameraGraphModules_Companion_ProvideCameraControllerFactory create(xs6<CameraGraphId> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<CameraBackend> xs6Var3, xs6<CameraContext> xs6Var4, xs6<GraphProcessorImpl> xs6Var5, xs6<StreamGraph> xs6Var6, xs6<SurfaceTracker> xs6Var7) {
        return new InternalCameraGraphModules_Companion_ProvideCameraControllerFactory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7);
    }

    public static CameraController provideCameraController(CameraGraphId cameraGraphId, CameraGraph.Config config, CameraBackend cameraBackend, CameraContext cameraContext, GraphProcessorImpl graphProcessorImpl, StreamGraph streamGraph, SurfaceTracker surfaceTracker) {
        CameraController cameraControllerProvideCameraController = InternalCameraGraphModules.Companion.provideCameraController(cameraGraphId, config, cameraBackend, cameraContext, graphProcessorImpl, streamGraph, surfaceTracker);
        te6.b(cameraControllerProvideCameraController);
        return cameraControllerProvideCameraController;
    }

    @Override // defpackage.ws6
    public CameraController get() {
        return provideCameraController(this.graphIdProvider.get(), this.graphConfigProvider.get(), this.cameraBackendProvider.get(), this.cameraContextProvider.get(), this.graphProcessorProvider.get(), this.streamGraphProvider.get(), this.surfaceTrackerProvider.get());
    }
}
