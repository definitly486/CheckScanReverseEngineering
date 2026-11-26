package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideStreamGraphFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideStreamGraphFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideStreamGraphFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideStreamGraphFactory(camera2ControllerConfig);
    }

    public static StreamGraphImpl provideStreamGraph(Camera2ControllerConfig camera2ControllerConfig) {
        StreamGraphImpl streamGraphImplProvideStreamGraph = camera2ControllerConfig.provideStreamGraph();
        te6.b(streamGraphImplProvideStreamGraph);
        return streamGraphImplProvideStreamGraph;
    }

    @Override // defpackage.ws6
    public StreamGraphImpl get() {
        return provideStreamGraph(this.module);
    }
}
