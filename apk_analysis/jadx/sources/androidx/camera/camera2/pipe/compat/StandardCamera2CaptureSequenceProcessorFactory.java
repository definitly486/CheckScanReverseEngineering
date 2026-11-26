package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class StandardCamera2CaptureSequenceProcessorFactory implements Camera2CaptureSequenceProcessorFactory {
    private final CameraGraph.Config graphConfig;
    private final Camera2Quirks quirks;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;

    public StandardCamera2CaptureSequenceProcessorFactory(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Camera2Quirks camera2Quirks, StrictMode strictMode) {
        threads.getClass();
        config.getClass();
        streamGraphImpl.getClass();
        camera2Quirks.getClass();
        strictMode.getClass();
        this.threads = threads;
        this.graphConfig = config;
        this.streamGraph = streamGraphImpl;
        this.quirks = camera2Quirks;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessorFactory
    public CaptureSequenceProcessor<?, CaptureSequence<Object>> create(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Map<StreamId, ? extends Surface> map, Map<OutputId, ? extends Surface> map2) {
        cameraCaptureSessionWrapper.getClass();
        map.getClass();
        map2.getClass();
        return new Camera2CaptureSequenceProcessor(cameraCaptureSessionWrapper, this.threads, this.graphConfig.m312getDefaultTemplatefGx8uWA(), map, map2, this.streamGraph, this.strictMode, this.quirks.shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe(this.graphConfig), null);
    }
}
