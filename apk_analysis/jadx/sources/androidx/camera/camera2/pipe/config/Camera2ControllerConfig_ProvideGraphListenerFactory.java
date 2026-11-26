package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.GraphListener;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ControllerConfig_ProvideGraphListenerFactory implements xs6 {
    private final Camera2ControllerConfig module;

    private Camera2ControllerConfig_ProvideGraphListenerFactory(Camera2ControllerConfig camera2ControllerConfig) {
        this.module = camera2ControllerConfig;
    }

    public static Camera2ControllerConfig_ProvideGraphListenerFactory create(Camera2ControllerConfig camera2ControllerConfig) {
        return new Camera2ControllerConfig_ProvideGraphListenerFactory(camera2ControllerConfig);
    }

    public static GraphListener provideGraphListener(Camera2ControllerConfig camera2ControllerConfig) {
        GraphListener graphListenerProvideGraphListener = camera2ControllerConfig.provideGraphListener();
        te6.b(graphListenerProvideGraphListener);
        return graphListenerProvideGraphListener;
    }

    @Override // defpackage.ws6
    public GraphListener get() {
        return provideGraphListener(this.module);
    }
}
