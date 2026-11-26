package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraController_Factory implements xs6 {
    private final xs6<Camera2DeviceManager> camera2DeviceManagerProvider;
    private final xs6<Camera2Quirks> camera2QuirksProvider;
    private final xs6<CameraGraphId> cameraGraphIdProvider;
    private final xs6<CameraStatusMonitor> cameraStatusMonitorProvider;
    private final xs6<CameraSurfaceManager> cameraSurfaceManagerProvider;
    private final xs6<Camera2CaptureSequenceProcessorFactory> captureSequenceProcessorFactoryProvider;
    private final xs6<CaptureSessionFactory> captureSessionFactoryProvider;
    private final xs6<ConcurrentSessionSequencers> concurrentSessionSequencersProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<GraphListener> graphListenerProvider;
    private final xs6<y22> scopeProvider;
    private final xs6<Camera2CameraController.ShutdownListener> shutdownListenerProvider;
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<StrictMode> strictModeProvider;
    private final xs6<SurfaceTracker> surfaceTrackerProvider;
    private final xs6<Threads> threadsProvider;
    private final xs6<TimeSource> timeSourceProvider;

    private Camera2CameraController_Factory(xs6<y22> xs6Var, xs6<Threads> xs6Var2, xs6<StrictMode> xs6Var3, xs6<CameraGraph.Config> xs6Var4, xs6<GraphListener> xs6Var5, xs6<SurfaceTracker> xs6Var6, xs6<CameraStatusMonitor> xs6Var7, xs6<CaptureSessionFactory> xs6Var8, xs6<Camera2CaptureSequenceProcessorFactory> xs6Var9, xs6<Camera2DeviceManager> xs6Var10, xs6<CameraSurfaceManager> xs6Var11, xs6<Camera2Quirks> xs6Var12, xs6<TimeSource> xs6Var13, xs6<CameraGraphId> xs6Var14, xs6<Camera2CameraController.ShutdownListener> xs6Var15, xs6<StreamGraphImpl> xs6Var16, xs6<ConcurrentSessionSequencers> xs6Var17) {
        this.scopeProvider = xs6Var;
        this.threadsProvider = xs6Var2;
        this.strictModeProvider = xs6Var3;
        this.graphConfigProvider = xs6Var4;
        this.graphListenerProvider = xs6Var5;
        this.surfaceTrackerProvider = xs6Var6;
        this.cameraStatusMonitorProvider = xs6Var7;
        this.captureSessionFactoryProvider = xs6Var8;
        this.captureSequenceProcessorFactoryProvider = xs6Var9;
        this.camera2DeviceManagerProvider = xs6Var10;
        this.cameraSurfaceManagerProvider = xs6Var11;
        this.camera2QuirksProvider = xs6Var12;
        this.timeSourceProvider = xs6Var13;
        this.cameraGraphIdProvider = xs6Var14;
        this.shutdownListenerProvider = xs6Var15;
        this.streamGraphProvider = xs6Var16;
        this.concurrentSessionSequencersProvider = xs6Var17;
    }

    public static Camera2CameraController_Factory create(xs6<y22> xs6Var, xs6<Threads> xs6Var2, xs6<StrictMode> xs6Var3, xs6<CameraGraph.Config> xs6Var4, xs6<GraphListener> xs6Var5, xs6<SurfaceTracker> xs6Var6, xs6<CameraStatusMonitor> xs6Var7, xs6<CaptureSessionFactory> xs6Var8, xs6<Camera2CaptureSequenceProcessorFactory> xs6Var9, xs6<Camera2DeviceManager> xs6Var10, xs6<CameraSurfaceManager> xs6Var11, xs6<Camera2Quirks> xs6Var12, xs6<TimeSource> xs6Var13, xs6<CameraGraphId> xs6Var14, xs6<Camera2CameraController.ShutdownListener> xs6Var15, xs6<StreamGraphImpl> xs6Var16, xs6<ConcurrentSessionSequencers> xs6Var17) {
        return new Camera2CameraController_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10, xs6Var11, xs6Var12, xs6Var13, xs6Var14, xs6Var15, xs6Var16, xs6Var17);
    }

    public static Camera2CameraController newInstance(y22 y22Var, Threads threads, StrictMode strictMode, CameraGraph.Config config, GraphListener graphListener, SurfaceTracker surfaceTracker, CameraStatusMonitor cameraStatusMonitor, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory, Camera2DeviceManager camera2DeviceManager, CameraSurfaceManager cameraSurfaceManager, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraGraphId cameraGraphId, Camera2CameraController.ShutdownListener shutdownListener, StreamGraphImpl streamGraphImpl, ConcurrentSessionSequencers concurrentSessionSequencers) {
        return new Camera2CameraController(y22Var, threads, strictMode, config, graphListener, surfaceTracker, cameraStatusMonitor, captureSessionFactory, camera2CaptureSequenceProcessorFactory, camera2DeviceManager, cameraSurfaceManager, camera2Quirks, timeSource, cameraGraphId, shutdownListener, streamGraphImpl, concurrentSessionSequencers);
    }

    @Override // defpackage.ws6
    public Camera2CameraController get() {
        return newInstance(this.scopeProvider.get(), this.threadsProvider.get(), this.strictModeProvider.get(), this.graphConfigProvider.get(), this.graphListenerProvider.get(), this.surfaceTrackerProvider.get(), this.cameraStatusMonitorProvider.get(), this.captureSessionFactoryProvider.get(), this.captureSequenceProcessorFactoryProvider.get(), this.camera2DeviceManagerProvider.get(), this.cameraSurfaceManagerProvider.get(), this.camera2QuirksProvider.get(), this.timeSourceProvider.get(), this.cameraGraphIdProvider.get(), this.shutdownListenerProvider.get(), this.streamGraphProvider.get(), this.concurrentSessionSequencersProvider.get());
    }
}
