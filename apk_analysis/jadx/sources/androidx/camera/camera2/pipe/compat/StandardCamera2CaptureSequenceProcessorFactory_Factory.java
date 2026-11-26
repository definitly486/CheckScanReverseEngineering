package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class StandardCamera2CaptureSequenceProcessorFactory_Factory implements xs6 {
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<Camera2Quirks> quirksProvider;
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<StrictMode> strictModeProvider;
    private final xs6<Threads> threadsProvider;

    private StandardCamera2CaptureSequenceProcessorFactory_Factory(xs6<Threads> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<StreamGraphImpl> xs6Var3, xs6<Camera2Quirks> xs6Var4, xs6<StrictMode> xs6Var5) {
        this.threadsProvider = xs6Var;
        this.graphConfigProvider = xs6Var2;
        this.streamGraphProvider = xs6Var3;
        this.quirksProvider = xs6Var4;
        this.strictModeProvider = xs6Var5;
    }

    public static StandardCamera2CaptureSequenceProcessorFactory_Factory create(xs6<Threads> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<StreamGraphImpl> xs6Var3, xs6<Camera2Quirks> xs6Var4, xs6<StrictMode> xs6Var5) {
        return new StandardCamera2CaptureSequenceProcessorFactory_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static StandardCamera2CaptureSequenceProcessorFactory newInstance(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Camera2Quirks camera2Quirks, StrictMode strictMode) {
        return new StandardCamera2CaptureSequenceProcessorFactory(threads, config, streamGraphImpl, camera2Quirks, strictMode);
    }

    @Override // defpackage.ws6
    public StandardCamera2CaptureSequenceProcessorFactory get() {
        return newInstance(this.threadsProvider.get(), this.graphConfigProvider.get(), this.streamGraphProvider.get(), this.quirksProvider.get(), this.strictModeProvider.get());
    }
}
