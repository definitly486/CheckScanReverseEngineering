package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.config.Camera2ControllerScope;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bz0;
import defpackage.cz0;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l1;
import defpackage.mb4;
import defpackage.mr7;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.s68;
import defpackage.v93;
import defpackage.xp1;
import defpackage.y22;
import defpackage.y68;
import defpackage.yk2;
import defpackage.yp1;
import defpackage.ys7;
import defpackage.z22;
import java.util.Map;
import java.util.Set;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
@Camera2ControllerScope
public final class Camera2CameraController implements CameraController {
    private static final int MS_TO_NS = 1000000;
    private static final long RESTART_TIMEOUT_WHEN_ENABLED_MS = 700;
    private boolean _isForeground;
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2Quirks camera2Quirks;
    private CameraStatusMonitor.CameraStatus cameraAvailability;
    private mb4 cameraAvailabilityJob;
    private final CameraGraphId cameraGraphId;
    private mb4 cameraPrioritiesJob;
    private final CameraStatusMonitor cameraStatusMonitor;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CaptureSessionFactory captureSessionFactory;
    private final xp1<j59> closedDeferred;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private CameraController.ControllerState controllerState;
    private VirtualCamera currentCamera;
    private mb4 currentCameraStateJob;
    private CaptureSessionState currentSession;
    private Map<StreamId, ? extends Surface> currentSurfaceMap;
    private final CameraGraph.Config graphConfig;
    private final GraphListener graphListener;
    private CameraError lastCameraError;
    private TimestampNs lastCameraPrioritiesChangedTs;
    private final Object lock;
    private mb4 restartJob;
    private final y22 scope;
    private final ShutdownListener shutdownListener;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final SurfaceTracker surfaceTracker;
    private final Threads threads;
    private final TimeSource timeSource;
    public static final Companion Companion = new Companion(null);
    private static final long PRIORITIES_CHANGED_THRESHOLD_NS = DurationNs.m845constructorimpl(200000000);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$1", f = "Camera2CameraController.kt", l = {124}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2CameraController.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y68<CameraStatusMonitor.CameraStatus> cameraAvailability = Camera2CameraController.this.cameraStatusMonitor.getCameraAvailability();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                id3<? super CameraStatusMonitor.CameraStatus> id3Var = new id3() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.1.1
                    public final Object emit(CameraStatusMonitor.CameraStatus cameraStatus, e02<? super j59> e02Var) {
                        if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                            if (!CameraId.m354equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraAvailable) cameraStatus).m930getCameraIdDz_R5H8(), camera2CameraController.mo228getCameraIdDz_R5H8())) {
                                ah.f("Check failed.");
                                return null;
                            }
                            camera2CameraController.onCameraStatusChanged(cameraStatus);
                        } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable) {
                            if (!CameraId.m354equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraUnavailable) cameraStatus).m931getCameraIdDz_R5H8(), camera2CameraController.mo228getCameraIdDz_R5H8())) {
                                ah.f("Check failed.");
                                return null;
                            }
                            camera2CameraController.onCameraStatusChanged(cameraStatus);
                        }
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((CameraStatusMonitor.CameraStatus) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (cameraAvailability.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$2", f = "Camera2CameraController.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2CameraController.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ys7<j59> cameraPriorities = Camera2CameraController.this.cameraStatusMonitor.getCameraPriorities();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                id3<? super j59> id3Var = new id3() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.2.1
                    public final Object emit(j59 j59Var, e02<? super j59> e02Var) {
                        camera2CameraController.onCameraStatusChanged(CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged.INSTANCE);
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((j59) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (cameraPriorities.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public interface ShutdownListener {
        void onControllerClosed(CameraController cameraController);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController", f = "Camera2CameraController.kt", l = {340}, m = "awaitClosed", v = 1)
    public static final class C04061 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04061(e02<? super C04061> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Camera2CameraController.this.awaitClosed(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$startLocked$5, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$startLocked$5", f = "Camera2CameraController.kt", l = {WebmConstants.MkvEbmlElement.REFERENCE_BLOCK}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass5 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass5(e02<? super AnonymousClass5> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2CameraController.this.new AnonymousClass5(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass5) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Camera2CameraController camera2CameraController = Camera2CameraController.this;
                this.label = 1;
                if (camera2CameraController.bindSessionToCamera(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2", f = "Camera2CameraController.kt", l = {WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY}, m = "invokeSuspend", v = 1)
    public static final class C04072 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ long $delayMs;
        int label;
        final /* synthetic */ Camera2CameraController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04072(long j, Camera2CameraController camera2CameraController, e02<? super C04072> e02Var) {
            super(2, e02Var);
            this.$delayMs = j;
            this.this$0 = camera2CameraController;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04072(this.$delayMs, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04072) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = this.$delayMs;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Object obj2 = this.this$0.lock;
            Camera2CameraController camera2CameraController = this.this$0;
            synchronized (obj2) {
                try {
                    if (!camera2CameraController.isClosed() && !aa4.e(camera2CameraController.getControllerState$camera_camera2_pipe(), CameraController.ControllerState.STOPPING.INSTANCE) && !aa4.e(camera2CameraController.getControllerState$camera_camera2_pipe(), CameraController.ControllerState.STOPPED.INSTANCE)) {
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Restarting " + camera2CameraController + "...");
                        }
                        camera2CameraController.surfaceTracker.registerAllSurfaces();
                        camera2CameraController.stopLocked();
                        camera2CameraController.startLocked();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return j59.a;
        }
    }

    public Camera2CameraController(y22 y22Var, Threads threads, StrictMode strictMode, CameraGraph.Config config, GraphListener graphListener, SurfaceTracker surfaceTracker, CameraStatusMonitor cameraStatusMonitor, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory, Camera2DeviceManager camera2DeviceManager, CameraSurfaceManager cameraSurfaceManager, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraGraphId cameraGraphId, ShutdownListener shutdownListener, StreamGraphImpl streamGraphImpl, ConcurrentSessionSequencers concurrentSessionSequencers) {
        y22Var.getClass();
        threads.getClass();
        strictMode.getClass();
        config.getClass();
        graphListener.getClass();
        surfaceTracker.getClass();
        cameraStatusMonitor.getClass();
        captureSessionFactory.getClass();
        camera2CaptureSequenceProcessorFactory.getClass();
        camera2DeviceManager.getClass();
        cameraSurfaceManager.getClass();
        camera2Quirks.getClass();
        timeSource.getClass();
        cameraGraphId.getClass();
        shutdownListener.getClass();
        streamGraphImpl.getClass();
        concurrentSessionSequencers.getClass();
        this.scope = y22Var;
        this.threads = threads;
        this.strictMode = strictMode;
        this.graphConfig = config;
        this.graphListener = graphListener;
        this.surfaceTracker = surfaceTracker;
        this.cameraStatusMonitor = cameraStatusMonitor;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = camera2CaptureSequenceProcessorFactory;
        this.camera2DeviceManager = camera2DeviceManager;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraGraphId = cameraGraphId;
        this.shutdownListener = shutdownListener;
        this.streamGraph = streamGraphImpl;
        this.lock = new Object();
        this._isForeground = true;
        this.controllerState = CameraController.ControllerState.STOPPED.INSTANCE;
        this.cameraAvailability = new CameraStatusMonitor.CameraStatus.CameraUnavailable(mo228getCameraIdDz_R5H8(), null);
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = config.getConcurrentCameraGraphs$camera_camera2_pipe();
        this.concurrentSessionSequencer = concurrentCameraGraphs$camera_camera2_pipe != null ? concurrentSessionSequencers.getSequencer(getCameraGraphId(), concurrentCameraGraphs$camera_camera2_pipe) : null;
        this.closedDeferred = new yp1();
        this.cameraAvailabilityJob = av0.c(y22Var, null, null, new AnonymousClass1(null), 3);
        this.cameraPrioritiesJob = av0.c(y22Var, null, null, new AnonymousClass2(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v0, types: [T, androidx.camera.camera2.pipe.compat.CaptureSessionState] */
    public final Object bindSessionToCamera(e02<? super j59> e02Var) {
        VirtualCamera virtualCamera;
        ?? r3;
        final r07 r07Var = new r07();
        synchronized (this.lock) {
            virtualCamera = this.currentCamera;
            r3 = this.currentSession;
            r07Var.b = r3;
            j59 j59Var = j59.a;
        }
        if (virtualCamera == null || r3 == 0) {
            return j59.a;
        }
        Object objCollect = virtualCamera.getState().collect(new id3() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.bindSessionToCamera.3
            public final Object emit(CameraState cameraState, e02<? super j59> e02Var2) {
                if (cameraState instanceof CameraStateOpen) {
                    r07Var.b.setCameraDevice(((CameraStateOpen) cameraState).getCameraDevice());
                } else if (cameraState instanceof CameraStateClosing) {
                    r07Var.b.shutdown();
                } else if (cameraState instanceof CameraStateClosed) {
                    r07Var.b.shutdown();
                    this.onStateClosed((CameraStateClosed) cameraState);
                }
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((CameraState) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    private final void detachSessionAndCamera(CaptureSessionState captureSessionState, VirtualCamera virtualCamera) {
        s68 s68VarC = av0.c(this.scope, null, null, new Camera2CameraController$detachSessionAndCamera$job$1(captureSessionState, virtualCamera, null), 3);
        if (aa4.e(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE)) {
            s68VarC.g(new bz0(this, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detachSessionAndCamera$lambda$0(Camera2CameraController camera2CameraController, Throwable th) {
        synchronized (camera2CameraController.lock) {
            try {
                camera2CameraController.controllerState = CameraController.ControllerState.CLOSED.INSTANCE;
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, camera2CameraController + " is closed");
                }
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        camera2CameraController.shutdownListener.onControllerClosed(camera2CameraController);
        xp1<j59> xp1Var = camera2CameraController.closedDeferred;
        j59 j59Var2 = j59.a;
        xp1Var.f(j59Var2);
        z22.b(camera2CameraController.scope, null);
        return j59Var2;
    }

    public static /* synthetic */ void getControllerState$camera_camera2_pipe$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClosed() {
        return aa4.e(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE) || aa4.e(this.controllerState, CameraController.ControllerState.CLOSED.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCameraStatusChanged(CameraStatusMonitor.CameraStatus cameraStatus) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " (" + ((Object) CameraId.m357toStringimpl(mo228getCameraIdDz_R5H8())) + ") camera status changed: " + cameraStatus);
        }
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if ((cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) || (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable)) {
                    this.cameraAvailability = cameraStatus;
                } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged) {
                    this.lastCameraPrioritiesChangedTs = TimestampNs.m856boximpl(this.timeSource.mo855nowvQl9yQU());
                }
                tryRestart();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onStateClosed(CameraStateClosed cameraStateClosed) {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if (cameraStateClosed.m795getCameraErrorCodemVEW8x0() != null) {
                    this.lastCameraError = cameraStateClosed.m795getCameraErrorCodemVEW8x0();
                    if (CameraError.m281isDisconnectedimpl(cameraStateClosed.m795getCameraErrorCodemVEW8x0().m283unboximpl())) {
                        this.controllerState = CameraController.ControllerState.DISCONNECTED.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, this + " is disconnected");
                        }
                    } else {
                        this.controllerState = CameraController.ControllerState.ERROR.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, this + " encountered error: " + ((Object) CameraError.m282toStringimpl(cameraStateClosed.m795getCameraErrorCodemVEW8x0().m283unboximpl())));
                        }
                    }
                } else {
                    this.controllerState = CameraController.ControllerState.STOPPED.INSTANCE;
                }
                this.surfaceTracker.unregisterAllSurfaces();
                tryRestart();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startLocked() {
        Set<CameraId> setF;
        if (isClosed()) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i(Log.TAG, "Ignoring start(): " + this + " is already closed");
                return;
            }
            return;
        }
        CameraController.ControllerState controllerState = this.controllerState;
        CameraController.ControllerState.STARTED started = CameraController.ControllerState.STARTED.INSTANCE;
        if (aa4.e(controllerState, started)) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring start(): " + this + " is already started");
                return;
            }
            return;
        }
        this.lastCameraError = null;
        String strM310getCameraDz_R5H8 = this.graphConfig.m310getCameraDz_R5H8();
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = this.graphConfig.getConcurrentCameraGraphs$camera_camera2_pipe();
        if (concurrentCameraGraphs$camera_camera2_pipe == null || (setF = concurrentCameraGraphs$camera_camera2_pipe.getCameraIds()) == null) {
            setF = l1.f(CameraId.m351boximpl(strM310getCameraDz_R5H8));
        }
        VirtualCamera virtualCameraMo767openzDSwpeU = this.camera2DeviceManager.mo767openzDSwpeU(strM310getCameraDz_R5H8, qn1.t0(mr7.i(setF, CameraId.m351boximpl(strM310getCameraDz_R5H8))), this.graphListener, false, new cz0(this, 0));
        if (virtualCameraMo767openzDSwpeU == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e(Log.TAG, "Failed to start " + this + ": Open request submission failed");
                return;
            }
            return;
        }
        if (this.currentCamera != null) {
            ah.f("Check failed.");
            return;
        }
        if (this.currentSession != null) {
            ah.f("Check failed.");
            return;
        }
        this.currentCamera = virtualCameraMo767openzDSwpeU;
        CaptureSessionState captureSessionState = new CaptureSessionState(this.graphListener, this.captureSessionFactory, this.captureSequenceProcessorFactory, this.cameraSurfaceManager, this.timeSource, this.graphConfig.getFlags(), this.concurrentSessionSequencer, this.streamGraph, this.strictMode, this.threads, this.scope);
        this.currentSession = captureSessionState;
        Map<StreamId, ? extends Surface> map = this.currentSurfaceMap;
        if (map != null) {
            captureSessionState.configureSurfaceMap(map);
        }
        this.controllerState = started;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Started " + this);
        }
        mb4 mb4Var = this.currentCameraStateJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.currentCameraStateJob = av0.c(this.scope, null, null, new AnonymousClass5(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean startLocked$lambda$2(Camera2CameraController camera2CameraController, j59 j59Var) {
        j59Var.getClass();
        return camera2CameraController.isForeground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopLocked() {
        if (isClosed()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring stop(): " + this + " is already closed");
                return;
            }
            return;
        }
        CameraController.ControllerState controllerState = this.controllerState;
        CameraController.ControllerState.STOPPING stopping = CameraController.ControllerState.STOPPING.INSTANCE;
        if (aa4.e(controllerState, stopping) || aa4.e(this.controllerState, CameraController.ControllerState.STOPPED.INSTANCE)) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring stop(): " + this + " already stopping or stopped");
                return;
            }
            return;
        }
        VirtualCamera virtualCamera = this.currentCamera;
        CaptureSessionState captureSessionState = this.currentSession;
        this.currentCamera = null;
        this.currentSession = null;
        this.controllerState = stopping;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Stopping " + this);
        }
        detachSessionAndCamera(captureSessionState, virtualCamera);
    }

    private final void tryRestart() {
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        if (Companion.m757shouldRestartX9Wt83s$camera_camera2_pipe(this.controllerState, this.lastCameraError, this.cameraAvailability, this.lastCameraPrioritiesChangedTs, jMo855nowvQl9yQU)) {
            long j = this.graphConfig.getFlags().getEnableRestartDelays() ? 700L : 0L;
            mb4 mb4Var = this.restartJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.restartJob = av0.c(this.scope, null, null, new C04072(j, this, null), 3);
            return;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + ": Not restarting. Controller state = " + getControllerState$camera_camera2_pipe() + ", last camera error = " + this.lastCameraError + ", camera availability = " + this.cameraAvailability + ", last camera priorities changed = " + this.lastCameraPrioritiesChangedTs + ", current timestamp = " + ((Object) TimestampNs.m863toStringimpl(jMo855nowvQl9yQU)) + '.');
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraController
    public Object awaitClosed(e02<? super Boolean> e02Var) {
        C04061 c04061;
        if (e02Var instanceof C04061) {
            c04061 = (C04061) e02Var;
            int i = c04061.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04061.label = i - Integer.MIN_VALUE;
            } else {
                c04061 = new C04061(e02Var);
            }
        } else {
            c04061 = new C04061(e02Var);
        }
        Object obj = c04061.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04061.label;
        if (i2 == 0) {
            r57.b(obj);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, this + "#awaitClosed");
            }
            synchronized (this.lock) {
                try {
                    if (aa4.e(this.controllerState, CameraController.ControllerState.CLOSED.INSTANCE)) {
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, this + "#awaitClosed: Controller is already closed.");
                        }
                        return Boolean.TRUE;
                    }
                    if (!aa4.e(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE)) {
                        if (log.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, this + "#awaitClosed: Controller isn't closing!");
                        }
                        return Boolean.FALSE;
                    }
                    j59 j59Var = j59.a;
                    xp1<j59> xp1Var = this.closedDeferred;
                    c04061.label = 1;
                    if (xp1Var.Z(c04061) == a32Var) {
                        return a32Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return Boolean.TRUE;
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void close() {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                this.controllerState = CameraController.ControllerState.CLOSING.INSTANCE;
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Closed " + this);
                }
                VirtualCamera virtualCamera = this.currentCamera;
                CaptureSessionState captureSessionState = this.currentSession;
                this.currentCamera = null;
                this.currentSession = null;
                mb4 mb4Var = this.restartJob;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                mb4 mb4Var2 = this.currentCameraStateJob;
                if (mb4Var2 != null) {
                    mb4Var2.cancel(null);
                }
                this.currentCameraStateJob = null;
                mb4 mb4Var3 = this.cameraAvailabilityJob;
                if (mb4Var3 != null) {
                    mb4Var3.cancel(null);
                }
                this.cameraAvailabilityJob = null;
                mb4 mb4Var4 = this.cameraPrioritiesJob;
                if (mb4Var4 != null) {
                    mb4Var4.cancel(null);
                }
                this.cameraPrioritiesJob = null;
                v93.c(this.cameraStatusMonitor);
                detachSessionAndCamera(captureSessionState, virtualCamera);
                if (this.graphConfig.getFlags().getCloseCameraDeviceOnClose() || this.camera2Quirks.m782x552c1673(mo228getCameraIdDz_R5H8())) {
                    if (log.getDEBUG_LOGGABLE()) {
                        android.util.Log.d(Log.TAG, "Quirk: Closing " + ((Object) CameraId.m357toStringimpl(mo228getCameraIdDz_R5H8())) + " during " + this + "#close");
                    }
                    this.camera2DeviceManager.mo766closeEfqyGwQ(mo228getCameraIdDz_R5H8());
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public CameraGraphId getCameraGraphId() {
        return this.cameraGraphId;
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    public String mo228getCameraIdDz_R5H8() {
        return this.graphConfig.m310getCameraDz_R5H8();
    }

    public final CameraController.ControllerState getControllerState$camera_camera2_pipe() {
        return this.controllerState;
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    /* JADX INFO: renamed from: getOutputLatency-n5Pu2dI */
    public StreamGraph.OutputLatency mo229getOutputLatencyn5Pu2dI(StreamId streamId) {
        CaptureSessionState captureSessionState;
        CameraExtensionSession.StillCaptureLatency realtimeCaptureLatency;
        if (Build.VERSION.SDK_INT < 34 || (captureSessionState = this.currentSession) == null || (realtimeCaptureLatency = captureSessionState.getRealtimeCaptureLatency()) == null) {
            return null;
        }
        return new StreamGraph.OutputLatency(realtimeCaptureLatency.getCaptureLatency() * 1000000, realtimeCaptureLatency.getProcessingLatency() * 1000000);
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public boolean isForeground() {
        boolean z;
        synchronized (this.lock) {
            z = this._isForeground;
        }
        return z;
    }

    public final void setControllerState$camera_camera2_pipe(CameraController.ControllerState controllerState) {
        controllerState.getClass();
        this.controllerState = controllerState;
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void setForeground(boolean z) {
        synchronized (this.lock) {
            this._isForeground = z;
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void start() {
        synchronized (this.lock) {
            startLocked();
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void stop() {
        synchronized (this.lock) {
            stopLocked();
            j59 j59Var = j59.a;
        }
    }

    public String toString() {
        return "Camera2CameraController(" + getCameraGraphId() + ')';
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void updateSurfaceMap(Map<StreamId, ? extends Surface> map) {
        map.getClass();
        synchronized (this.lock) {
            if (isClosed()) {
                return;
            }
            this.currentSurfaceMap = map;
            CaptureSessionState captureSessionState = this.currentSession;
            if (captureSessionState != null) {
                captureSessionState.configureSurfaceMap(map);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0022  */
        /* JADX INFO: renamed from: shouldRestart-X9Wt83s$camera_camera2_pipe, reason: not valid java name */
        public final boolean m757shouldRestartX9Wt83s$camera_camera2_pipe(CameraController.ControllerState controllerState, CameraError cameraError, CameraStatusMonitor.CameraStatus cameraStatus, TimestampNs timestampNs, long j) {
            boolean z;
            controllerState.getClass();
            cameraStatus.getClass();
            if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                if (cameraError == null ? false : CameraError.m279equalsimpl0(cameraError.m283unboximpl(), CameraError.Companion.m288getERROR_CAMERA_DISABLEDv7Vf74A())) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            boolean z2 = timestampNs != null && DurationNs.m844compareTozYRVrok(DurationNs.m845constructorimpl(j - timestampNs.m864unboximpl()), Camera2CameraController.PRIORITIES_CHANGED_THRESHOLD_NS) <= 0;
            if (controllerState.equals(CameraController.ControllerState.DISCONNECTED.INSTANCE)) {
                if (!z && !z2) {
                    int i = Build.VERSION.SDK_INT;
                    if (29 <= i && i < 33) {
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Quirk for multi-resume activated: Kicking off restart.");
                        }
                    }
                }
                return true;
            }
            if (controllerState.equals(CameraController.ControllerState.ERROR.INSTANCE) && z) {
                CameraError.Companion companion = CameraError.Companion;
                if (!(cameraError == null ? false : CameraError.m279equalsimpl0(cameraError.m283unboximpl(), companion.m296getERROR_GRAPH_CONFIGv7Vf74A()))) {
                    if (!(cameraError == null ? false : CameraError.m279equalsimpl0(cameraError.m283unboximpl(), companion.m298getERROR_SECURITY_EXCEPTIONv7Vf74A()))) {
                        return true;
                    }
                }
            }
            return false;
        }

        private Companion() {
        }
    }
}
