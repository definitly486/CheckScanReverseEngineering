package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import defpackage.te6;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory implements xs6 {
    private final xs6<CameraController> cameraControllerProvider;
    private final xs6<CameraSurfaceManager> cameraSurfaceManagerProvider;
    private final xs6<StreamGraphImpl> streamGraphImplProvider;

    private SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory(xs6<StreamGraphImpl> xs6Var, xs6<CameraController> xs6Var2, xs6<CameraSurfaceManager> xs6Var3) {
        this.streamGraphImplProvider = xs6Var;
        this.cameraControllerProvider = xs6Var2;
        this.cameraSurfaceManagerProvider = xs6Var3;
    }

    public static SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory create(xs6<StreamGraphImpl> xs6Var, xs6<CameraController> xs6Var2, xs6<CameraSurfaceManager> xs6Var3) {
        return new SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static SurfaceGraph provideSurfaceGraph(StreamGraphImpl streamGraphImpl, ws6<CameraController> ws6Var, CameraSurfaceManager cameraSurfaceManager) {
        SurfaceGraph surfaceGraphProvideSurfaceGraph = SharedCameraGraphModules.Companion.provideSurfaceGraph(streamGraphImpl, ws6Var, cameraSurfaceManager);
        te6.b(surfaceGraphProvideSurfaceGraph);
        return surfaceGraphProvideSurfaceGraph;
    }

    @Override // defpackage.ws6
    public SurfaceGraph get() {
        return provideSurfaceGraph(this.streamGraphImplProvider.get(), this.cameraControllerProvider, this.cameraSurfaceManagerProvider.get());
    }
}
