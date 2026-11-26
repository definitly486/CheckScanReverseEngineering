package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideCameraGraphFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideCameraGraphFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideCameraGraphFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideCameraGraphFactory(frameGraphConfigModule);
    }

    public static CameraGraph provideCameraGraph(FrameGraphConfigModule frameGraphConfigModule) {
        CameraGraph cameraGraphProvideCameraGraph = frameGraphConfigModule.provideCameraGraph();
        te6.b(cameraGraphProvideCameraGraph);
        return cameraGraphProvideCameraGraph;
    }

    @Override // defpackage.ws6
    public CameraGraph get() {
        return provideCameraGraph(this.module);
    }
}
