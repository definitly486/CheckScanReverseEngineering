package androidx.camera.camera2.pipe.compat;

import android.content.res.TypedArray;
import android.hardware.camera2.CameraExtensionSession;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.GraphRequestProcessor;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.me0;
import defpackage.mi2;
import defpackage.mr7;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.ot;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.ti0;
import defpackage.wg;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureSessionState implements CameraCaptureSessionWrapper.StateCallback {

    @Deprecated
    public static final long ABORT_CAPTURES_TIMEOUT_MS = 2000;

    @Deprecated
    public static final long CAPTURE_SESSION_TIMEOUT_MS = 3000;

    @Deprecated
    public static final long CLOSE_SESSION_TIMEOUT_MS = 3000;
    private static final Companion Companion = new Companion(null);
    private CameraDeviceWrapper _cameraDevice;
    private Map<StreamId, ? extends Surface> _surfaceMap;
    private final Map<Surface, AutoCloseable> _surfaceTokenMap;
    private final Map<OutputId, Surface> activeOutputSurfaceMap;
    private final Map<StreamId, Surface> activeStreamSurfaceMap;
    private ConfiguredCameraCaptureSession cameraCaptureSession;
    private final CameraGraph.Flags cameraGraphFlags;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CountDownLatch captureSessionAttemptCompleted;
    private final CaptureSessionFactory captureSessionFactory;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private final int debugId;
    private final ot<Boolean> finalized;
    private final GraphListener graphListener;
    private boolean hasAttemptedCaptureSession;
    private final Object lock;
    private Map<StreamId, ? extends OutputConfigurationWrapper> pendingOutputMap;
    private Map<StreamId, ? extends Surface> pendingSurfaceMap;
    private final y22 scope;
    private TimestampNs sessionCreatingTimestamp;
    private final CountDownLatch sessionDisconnected;
    private final SessionSequencer sessionSequencer;
    private State state;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;
    private final TimeSource timeSource;

    public static final class ConfiguredCameraCaptureSession {
        private final Camera2CaptureSequenceProcessor captureSequenceProcessor;
        private final GraphRequestProcessor processor;
        private final CameraCaptureSessionWrapper session;

        public ConfiguredCameraCaptureSession(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, GraphRequestProcessor graphRequestProcessor, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
            cameraCaptureSessionWrapper.getClass();
            graphRequestProcessor.getClass();
            this.session = cameraCaptureSessionWrapper;
            this.processor = graphRequestProcessor;
            this.captureSequenceProcessor = camera2CaptureSequenceProcessor;
        }

        public static /* synthetic */ ConfiguredCameraCaptureSession copy$default(ConfiguredCameraCaptureSession configuredCameraCaptureSession, CameraCaptureSessionWrapper cameraCaptureSessionWrapper, GraphRequestProcessor graphRequestProcessor, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor, int i, Object obj) {
            if ((i & 1) != 0) {
                cameraCaptureSessionWrapper = configuredCameraCaptureSession.session;
            }
            if ((i & 2) != 0) {
                graphRequestProcessor = configuredCameraCaptureSession.processor;
            }
            if ((i & 4) != 0) {
                camera2CaptureSequenceProcessor = configuredCameraCaptureSession.captureSequenceProcessor;
            }
            return configuredCameraCaptureSession.copy(cameraCaptureSessionWrapper, graphRequestProcessor, camera2CaptureSequenceProcessor);
        }

        public final CameraCaptureSessionWrapper component1() {
            return this.session;
        }

        public final GraphRequestProcessor component2() {
            return this.processor;
        }

        public final Camera2CaptureSequenceProcessor component3() {
            return this.captureSequenceProcessor;
        }

        public final ConfiguredCameraCaptureSession copy(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, GraphRequestProcessor graphRequestProcessor, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
            cameraCaptureSessionWrapper.getClass();
            graphRequestProcessor.getClass();
            return new ConfiguredCameraCaptureSession(cameraCaptureSessionWrapper, graphRequestProcessor, camera2CaptureSequenceProcessor);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfiguredCameraCaptureSession)) {
                return false;
            }
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = (ConfiguredCameraCaptureSession) obj;
            return aa4.e(this.session, configuredCameraCaptureSession.session) && aa4.e(this.processor, configuredCameraCaptureSession.processor) && aa4.e(this.captureSequenceProcessor, configuredCameraCaptureSession.captureSequenceProcessor);
        }

        public final Camera2CaptureSequenceProcessor getCaptureSequenceProcessor() {
            return this.captureSequenceProcessor;
        }

        public final GraphRequestProcessor getProcessor() {
            return this.processor;
        }

        public final CameraCaptureSessionWrapper getSession() {
            return this.session;
        }

        public int hashCode() {
            int iHashCode = (this.processor.hashCode() + (this.session.hashCode() * 31)) * 31;
            Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor = this.captureSequenceProcessor;
            return iHashCode + (camera2CaptureSequenceProcessor == null ? 0 : camera2CaptureSequenceProcessor.hashCode());
        }

        public String toString() {
            return "ConfiguredCameraCaptureSession(session=" + this.session + ", processor=" + this.processor + ", captureSequenceProcessor=" + this.captureSequenceProcessor + ')';
        }
    }

    public enum State {
        PENDING,
        CREATING,
        CREATED,
        CLOSING,
        CLOSED;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$12, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$12", f = "CaptureSessionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass12 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ ConfiguredCameraCaptureSession $captureSession;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass12(ConfiguredCameraCaptureSession configuredCameraCaptureSession, e02<? super AnonymousClass12> e02Var) {
            super(1, e02Var);
            this.$captureSession = configuredCameraCaptureSession;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return CaptureSessionState.this.new AnonymousClass12(this.$captureSession, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass12) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Debug debug = Debug.INSTANCE;
            String str = CaptureSessionState.this + " CameraCaptureSessionWrapper#close";
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.$captureSession;
            CaptureSessionState captureSessionState = CaptureSessionState.this;
            try {
                Trace.beginSection(str);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Closing capture session for " + captureSessionState);
                }
                ti0.d(configuredCameraCaptureSession.getSession());
                j59 j59Var = j59.a;
                return j59.a;
            } finally {
                Trace.endSection();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$3", f = "CaptureSessionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements nl3<e02<? super j59>, Object> {
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(1, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return CaptureSessionState.this.new AnonymousClass3(e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws InterruptedException {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CaptureSessionState.this.captureSessionAttemptCompleted.await();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$9, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$9", f = "CaptureSessionState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass9 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ GraphRequestProcessor $graphProcessor;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass9(GraphRequestProcessor graphRequestProcessor, e02<? super AnonymousClass9> e02Var) {
            super(1, e02Var);
            this.$graphProcessor = graphRequestProcessor;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return CaptureSessionState.this.new AnonymousClass9(this.$graphProcessor, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass9) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Debug debug = Debug.INSTANCE;
            String str = CaptureSessionState.this + " stopRepeating";
            GraphRequestProcessor graphRequestProcessor = this.$graphProcessor;
            try {
                Trace.beginSection(str);
                graphRequestProcessor.stopRepeating$camera_camera2_pipe();
                j59 j59Var = j59.a;
                Trace.endSection();
                String str2 = CaptureSessionState.this + " abortCaptures";
                GraphRequestProcessor graphRequestProcessor2 = this.$graphProcessor;
                try {
                    Trace.beginSection(str2);
                    graphRequestProcessor2.abortCaptures$camera_camera2_pipe();
                    return j59.a;
                } finally {
                    Trace.endSection();
                }
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$tryCreateCaptureSession$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState", f = "CaptureSessionState.kt", l = {567}, m = "tryCreateCaptureSession", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CaptureSessionState.this.tryCreateCaptureSession(this);
        }
    }

    public CaptureSessionState(GraphListener graphListener, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory, CameraSurfaceManager cameraSurfaceManager, TimeSource timeSource, CameraGraph.Flags flags, ConcurrentSessionSequencer concurrentSessionSequencer, StreamGraph streamGraph, StrictMode strictMode, Threads threads, y22 y22Var) {
        graphListener.getClass();
        captureSessionFactory.getClass();
        camera2CaptureSequenceProcessorFactory.getClass();
        cameraSurfaceManager.getClass();
        timeSource.getClass();
        flags.getClass();
        streamGraph.getClass();
        strictMode.getClass();
        threads.getClass();
        y22Var.getClass();
        this.graphListener = graphListener;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = camera2CaptureSequenceProcessorFactory;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.timeSource = timeSource;
        this.cameraGraphFlags = flags;
        this.concurrentSessionSequencer = concurrentSessionSequencer;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.threads = threads;
        this.scope = y22Var;
        this.debugId = CaptureSessionStateKt.getCaptureSessionDebugIds().b();
        this.lock = new Object();
        this.finalized = kt.d(Boolean.FALSE);
        this.activeStreamSurfaceMap = Collections.synchronizedMap(new HashMap());
        this.activeOutputSurfaceMap = Collections.synchronizedMap(new HashMap());
        this.sessionSequencer = concurrentSessionSequencer != null ? new SessionSequencer(concurrentSessionSequencer) : null;
        this.state = State.PENDING;
        this.sessionDisconnected = new CountDownLatch(1);
        this.captureSessionAttemptCompleted = new CountDownLatch(1);
        this._surfaceTokenMap = new LinkedHashMap();
    }

    private final void configure(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        synchronized (this.lock) {
            try {
                ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.cameraCaptureSession;
                if (configuredCameraCaptureSession == null && cameraCaptureSessionWrapper != null) {
                    Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory = this.captureSequenceProcessorFactory;
                    Map<StreamId, Surface> map = this.activeStreamSurfaceMap;
                    map.getClass();
                    Map<OutputId, Surface> map2 = this.activeOutputSurfaceMap;
                    map2.getClass();
                    CaptureSequenceProcessor<?, ?> captureSequenceProcessorCreate = camera2CaptureSequenceProcessorFactory.create(cameraCaptureSessionWrapper, map, map2);
                    configuredCameraCaptureSession = captureSequenceProcessorCreate instanceof Camera2CaptureSequenceProcessor ? new ConfiguredCameraCaptureSession(cameraCaptureSessionWrapper, GraphRequestProcessor.Companion.from(captureSequenceProcessorCreate), (Camera2CaptureSequenceProcessor) captureSequenceProcessorCreate) : new ConfiguredCameraCaptureSession(cameraCaptureSessionWrapper, GraphRequestProcessor.Companion.from(captureSequenceProcessorCreate), null);
                    this.cameraCaptureSession = configuredCameraCaptureSession;
                }
                if (this.state == State.CREATED && configuredCameraCaptureSession != null) {
                    boolean z = (this.pendingOutputMap == null || this.pendingSurfaceMap == null) ? false : true;
                    j59 j59Var = j59.a;
                    if (z) {
                        finalizeOutputsIfAvailable(false);
                    }
                    synchronized (this.lock) {
                        try {
                            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                                Timestamps timestamps = Timestamps.INSTANCE;
                                long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
                                TimestampNs timestampNs = this.sessionCreatingTimestamp;
                                timestampNs.getClass();
                                android.util.Log.i(Log.TAG, "Configured " + this + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m845constructorimpl(jMo855nowvQl9yQU - timestampNs.m864unboximpl()) / 1000000.0d)}, 1)));
                            }
                            this.graphListener.onGraphStarted(configuredCameraCaptureSession.getProcessor());
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void finalizeOutputsIfAvailable(boolean z) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        Map<StreamId, ? extends OutputConfigurationWrapper> map;
        Map<StreamId, ? extends Surface> map2;
        boolean z2;
        synchronized (this.lock) {
            configuredCameraCaptureSession = this.cameraCaptureSession;
            map = this.pendingOutputMap;
            map2 = this.pendingSurfaceMap;
            j59 j59Var = j59.a;
        }
        if (configuredCameraCaptureSession == null || map == null || map2 == null) {
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#finalizeOutputConfigurations");
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        for (Map.Entry<StreamId, ? extends OutputConfigurationWrapper> entry : map.entrySet()) {
            int iM729unboximpl = entry.getKey().m729unboximpl();
            OutputConfigurationWrapper value = entry.getValue();
            Surface surface = map2.get(StreamId.m723boximpl(iM729unboximpl));
            if (surface == null) {
                ah.f("Required value was null.");
                return;
            }
            value.addSurface(surface);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Map.Entry<StreamId, ? extends OutputConfigurationWrapper>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().getValue());
        }
        configuredCameraCaptureSession.getSession().finalizeOutputConfigurations(qn1.t0(linkedHashSet));
        synchronized (this.lock) {
            try {
                if (this.state == State.CREATED) {
                    this.activeStreamSurfaceMap.putAll(map2);
                    Iterator<Map.Entry<StreamId, ? extends Surface>> it2 = map2.entrySet().iterator();
                    while (true) {
                        z2 = true;
                        if (!it2.hasNext()) {
                            if (!Log.INSTANCE.getINFO_LOGGABLE()) {
                                break;
                            }
                            Timestamps timestamps2 = Timestamps.INSTANCE;
                            long jM845constructorimpl = DurationNs.m845constructorimpl(this.timeSource.mo855nowvQl9yQU() - jMo855nowvQl9yQU);
                            StringBuilder sb = new StringBuilder();
                            sb.append("Finalized ");
                            ArrayList arrayList = new ArrayList(map.size());
                            Iterator<Map.Entry<StreamId, ? extends OutputConfigurationWrapper>> it3 = map.entrySet().iterator();
                            while (it3.hasNext()) {
                                arrayList.add(StreamId.m723boximpl(it3.next().getKey().m729unboximpl()));
                            }
                            sb.append(arrayList);
                            sb.append(" for ");
                            sb.append(this);
                            sb.append(" in ");
                            Timestamps timestamps3 = Timestamps.INSTANCE;
                            sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM845constructorimpl / 1000000.0d)}, 1)));
                            android.util.Log.i(Log.TAG, sb.toString());
                            break;
                        }
                        Map.Entry<StreamId, ? extends Surface> next = it2.next();
                        int iM729unboximpl2 = next.getKey().m729unboximpl();
                        Surface value2 = next.getValue();
                        CameraStream cameraStreamM716getaKI5c8E = this.streamGraph.m716getaKI5c8E(iM729unboximpl2);
                        if (cameraStreamM716getaKI5c8E == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        if (cameraStreamM716getaKI5c8E.getOutputs().size() != 1) {
                            throw new IllegalStateException("Cannot finalize a multi-output stream!");
                        }
                        Map<OutputId, Surface> map3 = this.activeOutputSurfaceMap;
                        map3.getClass();
                        map3.put(OutputId.m503boximpl(((OutputStream) qn1.k0(cameraStreamM716getaKI5c8E.getOutputs())).mo527getId4LaLFng()), value2);
                    }
                } else {
                    z2 = false;
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2 && z) {
            this.graphListener.onGraphModified(configuredCameraCaptureSession.getProcessor());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
    }

    public static /* synthetic */ void finalizeOutputsIfAvailable$default(CaptureSessionState captureSessionState, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        captureSessionState.finalizeOutputsIfAvailable(z);
    }

    public static /* synthetic */ void finalizeSession$camera_camera2_pipe$default(CaptureSessionState captureSessionState, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        captureSessionState.finalizeSession$camera_camera2_pipe(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:116:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:43:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:57:0x0121  */
    /* JADX WARN: Code duplicated, block: B:59:0x0127  */
    /* JADX WARN: Code duplicated, block: B:62:0x0142  */
    /* JADX WARN: Code duplicated, block: B:71:0x0155 A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x017d A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0183 A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c6 A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01d9 A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:95:0x020d A[Catch: all -> 0x01bd, TRY_ENTER, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x022b A[Catch: all -> 0x01bd, TryCatch #2 {all -> 0x01bd, blocks: (B:64:0x0145, B:66:0x014b, B:69:0x0151, B:71:0x0155, B:73:0x017d, B:75:0x0183, B:78:0x01c0, B:80:0x01c6, B:81:0x01d3, B:83:0x01d9, B:85:0x01e9, B:88:0x01f8, B:90:0x0202, B:91:0x0204, B:95:0x020d, B:96:0x0224, B:97:0x0225, B:99:0x022b, B:100:0x024d), top: B:116:0x0145 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x0127, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:75:0x0183, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:95:0x020d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:99:0x022b, please report this as an issue */
    /* JADX WARN: Type inference failed for: r9v1, types: [T, java.util.Map<androidx.camera.camera2.pipe.StreamId, ? extends android.view.Surface>] */
    /* JADX WARN: Type inference failed for: r9v2, types: [T, androidx.camera.camera2.pipe.compat.CameraDeviceWrapper] */
    public final Object tryCreateCaptureSession(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        r07 r07Var;
        r07 r07Var2;
        r07 r07Var3;
        r07 r07Var4;
        Log log;
        CameraDeviceWrapper cameraDeviceWrapper;
        String strMo734getCameraIdDz_R5H8;
        CaptureSessionFactory.Result resultCreate;
        State state;
        Map<StreamId, OutputConfigurationWrapper> deferred;
        Map<StreamId, ? extends Surface> map;
        LinkedHashMap linkedHashMap;
        CameraDeviceWrapper cameraDeviceWrapper2;
        String strMo734getCameraIdDz_R5H9;
        String strM357toStringimpl;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                r07Var = new r07();
                r07Var2 = new r07();
                synchronized (this.lock) {
                    if (this.state != State.PENDING) {
                        return j59.a;
                    }
                    r07Var.b = this._surfaceMap;
                    ?? r9 = this._cameraDevice;
                    r07Var2.b = r9;
                    if (r07Var.b != 0 && r9 != 0) {
                        this.state = State.CREATING;
                        this.hasAttemptedCaptureSession = true;
                        Timestamps timestamps = Timestamps.INSTANCE;
                        this.sessionCreatingTimestamp = TimestampNs.m856boximpl(this.timeSource.mo855nowvQl9yQU());
                        j59 j59Var = j59.a;
                        SessionSequencer sessionSequencer = this.sessionSequencer;
                        if (sessionSequencer != null) {
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Awaiting session lock");
                            }
                            anonymousClass1.L$0 = r07Var;
                            anonymousClass1.L$1 = r07Var2;
                            anonymousClass1.label = 1;
                            if (sessionSequencer.awaitSessionLock(anonymousClass1) == a32Var) {
                                return a32Var;
                            }
                            r07Var3 = r07Var;
                            r07Var4 = r07Var2;
                        }
                        log = Log.INSTANCE;
                        if (log.getINFO_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder("Creating CameraCaptureSession from ");
                            cameraDeviceWrapper2 = (CameraDeviceWrapper) r07Var2.b;
                            if (cameraDeviceWrapper2 != null) {
                                strMo734getCameraIdDz_R5H9 = cameraDeviceWrapper2.mo734getCameraIdDz_R5H8();
                            } else {
                                strMo734getCameraIdDz_R5H9 = null;
                            }
                            if (strMo734getCameraIdDz_R5H9 == null) {
                                strM357toStringimpl = "null";
                            } else {
                                strM357toStringimpl = CameraId.m357toStringimpl(strMo734getCameraIdDz_R5H9);
                            }
                            sb.append((Object) strM357toStringimpl);
                            sb.append(" using ");
                            sb.append(this);
                            sb.append(" with ");
                            sb.append(r07Var.b);
                            android.util.Log.i(Log.TAG, sb.toString());
                        }
                        Debug debug = Debug.INSTANCE;
                        StringBuilder sb2 = new StringBuilder("CameraDevice-");
                        cameraDeviceWrapper = (CameraDeviceWrapper) r07Var2.b;
                        if (cameraDeviceWrapper != null) {
                            strMo734getCameraIdDz_R5H8 = cameraDeviceWrapper.mo734getCameraIdDz_R5H8();
                        } else {
                            strMo734getCameraIdDz_R5H8 = null;
                        }
                        Trace.beginSection(me0.d(sb2, strMo734getCameraIdDz_R5H8, "#createCaptureSession"));
                        CaptureSessionFactory captureSessionFactory = this.captureSessionFactory;
                        T t = r07Var2.b;
                        t.getClass();
                        T t2 = r07Var.b;
                        t2.getClass();
                        resultCreate = captureSessionFactory.create((CameraDeviceWrapper) t, (Map) t2, this);
                        Trace.endSection();
                        if (!(resultCreate instanceof CaptureSessionFactory.Result.Success)) {
                            if (log.getERROR_LOGGABLE()) {
                                android.util.Log.e(Log.TAG, "Failed to create capture session for " + this + '!');
                            }
                            return j59.a;
                        }
                        synchronized (this.lock) {
                            try {
                                state = this.state;
                                if (state != State.CLOSING && state != State.CLOSED) {
                                    if (state == State.CREATING) {
                                        throw new IllegalStateException(("Unexpected state: " + this.state).toString());
                                    }
                                    this.state = State.CREATED;
                                    Map<StreamId, Surface> map2 = this.activeStreamSurfaceMap;
                                    T t3 = r07Var.b;
                                    t3.getClass();
                                    map2.putAll((Map) t3);
                                    this.activeOutputSurfaceMap.putAll(((CaptureSessionFactory.Result.Success) resultCreate).getOutputSurfaceMap());
                                    deferred = ((CaptureSessionFactory.Result.Success) resultCreate).getDeferred();
                                    if (!deferred.isEmpty()) {
                                        if (log.getINFO_LOGGABLE()) {
                                            android.util.Log.i(Log.TAG, "Created " + this + " with " + qn1.t0(((Map) r07Var.b).keySet()) + ". Waiting to finalize " + qn1.t0(deferred.keySet()));
                                        }
                                        this.pendingOutputMap = deferred;
                                        map = this._surfaceMap;
                                        if (map != null) {
                                            linkedHashMap = new LinkedHashMap();
                                            for (Map.Entry<StreamId, ? extends Surface> entry : map.entrySet()) {
                                                if (deferred.containsKey(entry.getKey())) {
                                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                                }
                                            }
                                        } else {
                                            linkedHashMap = null;
                                        }
                                        if (linkedHashMap != null && linkedHashMap.size() == deferred.size()) {
                                            this.pendingSurfaceMap = linkedHashMap;
                                        }
                                    }
                                    j59 j59Var2 = j59.a;
                                    configure(null);
                                    return j59.a;
                                }
                                if (log.getINFO_LOGGABLE()) {
                                    android.util.Log.i(Log.TAG, "Warning: " + this + " was " + this.state + " while configuration was in progress.");
                                }
                                return j59.a;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return j59.a;
                }
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var4 = (r07) anonymousClass1.L$1;
            r07Var3 = (r07) anonymousClass1.L$0;
            r57.b(obj);
            Trace.beginSection(me0.d(sb2, strMo734getCameraIdDz_R5H8, "#createCaptureSession"));
            CaptureSessionFactory captureSessionFactory2 = this.captureSessionFactory;
            T t4 = r07Var2.b;
            t4.getClass();
            T t5 = r07Var.b;
            t5.getClass();
            resultCreate = captureSessionFactory2.create((CameraDeviceWrapper) t4, (Map) t5, this);
            Trace.endSection();
            if (!(resultCreate instanceof CaptureSessionFactory.Result.Success)) {
                if (log.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "Failed to create capture session for " + this + '!');
                }
                return j59.a;
            }
            synchronized (this.lock) {
                state = this.state;
                if (state != State.CLOSING) {
                    if (state == State.CREATING) {
                        throw new IllegalStateException(("Unexpected state: " + this.state).toString());
                    }
                    this.state = State.CREATED;
                    Map<StreamId, Surface> map3 = this.activeStreamSurfaceMap;
                    T t6 = r07Var.b;
                    t6.getClass();
                    map3.putAll((Map) t6);
                    this.activeOutputSurfaceMap.putAll(((CaptureSessionFactory.Result.Success) resultCreate).getOutputSurfaceMap());
                    deferred = ((CaptureSessionFactory.Result.Success) resultCreate).getDeferred();
                    if (!deferred.isEmpty()) {
                        if (log.getINFO_LOGGABLE()) {
                            android.util.Log.i(Log.TAG, "Created " + this + " with " + qn1.t0(((Map) r07Var.b).keySet()) + ". Waiting to finalize " + qn1.t0(deferred.keySet()));
                        }
                        this.pendingOutputMap = deferred;
                        map = this._surfaceMap;
                        if (map != null) {
                            linkedHashMap = new LinkedHashMap();
                            while (r12.hasNext()) {
                                if (deferred.containsKey(entry.getKey())) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        } else {
                            linkedHashMap = null;
                        }
                        if (linkedHashMap != null) {
                            this.pendingSurfaceMap = linkedHashMap;
                        }
                    }
                    j59 j59Var3 = j59.a;
                    configure(null);
                    return j59.a;
                }
                if (log.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Warning: " + this + " was " + this.state + " while configuration was in progress.");
                }
                return j59.a;
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
        r07Var = r07Var3;
        r07Var2 = r07Var4;
        log = Log.INSTANCE;
        if (log.getINFO_LOGGABLE()) {
            StringBuilder sb3 = new StringBuilder("Creating CameraCaptureSession from ");
            cameraDeviceWrapper2 = (CameraDeviceWrapper) r07Var2.b;
            if (cameraDeviceWrapper2 != null) {
                strMo734getCameraIdDz_R5H9 = cameraDeviceWrapper2.mo734getCameraIdDz_R5H8();
            } else {
                strMo734getCameraIdDz_R5H9 = null;
            }
            if (strMo734getCameraIdDz_R5H9 == null) {
                strM357toStringimpl = "null";
            } else {
                strM357toStringimpl = CameraId.m357toStringimpl(strMo734getCameraIdDz_R5H9);
            }
            sb3.append((Object) strM357toStringimpl);
            sb3.append(" using ");
            sb3.append(this);
            sb3.append(" with ");
            sb3.append(r07Var.b);
            android.util.Log.i(Log.TAG, sb3.toString());
        }
        Debug debug2 = Debug.INSTANCE;
        StringBuilder sb4 = new StringBuilder("CameraDevice-");
        cameraDeviceWrapper = (CameraDeviceWrapper) r07Var2.b;
        if (cameraDeviceWrapper != null) {
            strMo734getCameraIdDz_R5H8 = cameraDeviceWrapper.mo734getCameraIdDz_R5H8();
        } else {
            strMo734getCameraIdDz_R5H8 = null;
        }
    }

    private final void updateTrackedSurfaces(Map<StreamId, ? extends Surface> map, Map<StreamId, ? extends Surface> map2) throws Exception {
        boolean zIsTerminated;
        Set setY0 = qn1.y0(map.values());
        Set setY1 = qn1.y0(map2.values());
        for (Surface surface : mr7.j(setY0, setY1)) {
            AutoCloseable autoCloseableRemove = this._surfaceTokenMap.remove(surface);
            if (autoCloseableRemove == null) {
                autoCloseableRemove = null;
            } else if (autoCloseableRemove instanceof AutoCloseable) {
                autoCloseableRemove.close();
            } else if (autoCloseableRemove instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseableRemove;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (autoCloseableRemove instanceof TypedArray) {
                ((TypedArray) autoCloseableRemove).recycle();
            } else if (autoCloseableRemove instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseableRemove).release();
            } else {
                if (!(autoCloseableRemove instanceof MediaDrm)) {
                    mi2.b();
                    return;
                }
                ((MediaDrm) autoCloseableRemove).release();
            }
            if (autoCloseableRemove == null) {
                wg.c(surface, "Surface ", " doesn't have a matching surface token!");
                return;
            }
        }
        for (Surface surface2 : mr7.j(setY1, setY0)) {
            this._surfaceTokenMap.put(surface2, this.cameraSurfaceManager.registerSurface$camera_camera2_pipe(surface2));
        }
    }

    public final void configureSurfaceMap(Map<StreamId, ? extends Surface> map) {
        map.getClass();
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    Map<StreamId, ? extends Surface> map2 = this._surfaceMap;
                    if (map2 == null) {
                        map2 = mx2.b;
                    }
                    updateTrackedSurfaces(map2, map);
                    this._surfaceMap = map;
                    Map<StreamId, ? extends OutputConfigurationWrapper> map3 = this.pendingOutputMap;
                    if (map3 != null && this.pendingSurfaceMap == null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry<StreamId, ? extends Surface> entry : map.entrySet()) {
                            if (map3.containsKey(entry.getKey())) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                        if (linkedHashMap.size() == map3.size()) {
                            this.pendingSurfaceMap = linkedHashMap;
                            av0.c(this.scope, null, null, new CaptureSessionState$configureSurfaceMap$1$1(this, null), 3);
                        }
                    }
                    av0.c(this.scope, null, null, new CaptureSessionState$configureSurfaceMap$1$2(this, null), 3);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void disconnect() {
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSING;
                if (state != state2 && state != State.CLOSED) {
                    this.state = state2;
                    ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.cameraCaptureSession;
                    boolean z = false;
                    if (configuredCameraCaptureSession != null) {
                        this.cameraCaptureSession = null;
                    } else {
                        if (this.cameraGraphFlags.getCloseCaptureSessionOnDisconnect() && this.hasAttemptedCaptureSession) {
                            z = true;
                        }
                        configuredCameraCaptureSession = null;
                    }
                    j59 j59Var = j59.a;
                    SessionSequencer sessionSequencer = this.sessionSequencer;
                    if (sessionSequencer != null) {
                        sessionSequencer.release();
                    }
                    if (z) {
                        Log log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Waiting for CameraCaptureSession configuration");
                        }
                        if (((j59) this.threads.runBlockingCheckedOrNull(3000L, new AnonymousClass3(null))) == null && log.getERROR_LOGGABLE()) {
                            android.util.Log.e(Log.TAG, "Waiting for CameraCaptureSession configuration timed out");
                        }
                        synchronized (this.lock) {
                            configuredCameraCaptureSession = this.cameraCaptureSession;
                            this.cameraCaptureSession = null;
                        }
                    }
                    Debug debug = Debug.INSTANCE;
                    Trace.beginSection(this.graphListener + "#onGraphStopping");
                    this.graphListener.onGraphStopping();
                    Trace.endSection();
                    if (configuredCameraCaptureSession != null) {
                        GraphRequestProcessor processor = configuredCameraCaptureSession.getProcessor();
                        Log log2 = Log.INSTANCE;
                        if (log2.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, this + " Shutdown");
                        }
                        Trace.beginSection(this + "#shutdown");
                        if (this.cameraGraphFlags.getAbortCapturesOnStop() && ((j59) this.threads.runBlockingCheckedOrNull(2000L, new AnonymousClass9(processor, null))) == null && log2.getERROR_LOGGABLE()) {
                            android.util.Log.e(Log.TAG, "Failed to abort captures in 2000ms");
                        }
                        Trace.beginSection(this + "#disconnect");
                        Camera2CaptureSequenceProcessor captureSequenceProcessor = configuredCameraCaptureSession.getCaptureSequenceProcessor();
                        if (captureSequenceProcessor != null) {
                            captureSequenceProcessor.disconnect$camera_camera2_pipe();
                        }
                        Trace.endSection();
                        if (this.cameraGraphFlags.getCloseCaptureSessionOnDisconnect() && ((j59) this.threads.runBlockingCheckedOrNull(3000L, new AnonymousClass12(configuredCameraCaptureSession, null))) == null && log2.getERROR_LOGGABLE()) {
                            android.util.Log.e(Log.TAG, "Failed to close the capture session in 3000ms");
                        }
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped(processor);
                        Trace.endSection();
                        Trace.endSection();
                    } else {
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped(null);
                        Trace.endSection();
                    }
                    this.sessionDisconnected.countDown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalizeSession$camera_camera2_pipe(long j) {
        List<AutoCloseable> listT0;
        boolean zIsTerminated;
        if (j != 0) {
            av0.c(this.scope, null, null, new CaptureSessionState$finalizeSession$1(j, this, null), 3);
            return;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Finalizing " + this);
        }
        synchronized (this.lock) {
            listT0 = qn1.t0(this._surfaceTokenMap.values());
            this._surfaceTokenMap.clear();
        }
        for (AutoCloseable autoCloseable : listT0) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof MediaDrm)) {
                    mi2.b();
                    return;
                }
                ((MediaDrm) autoCloseable).release();
            }
        }
    }

    public final CameraDeviceWrapper getCameraDevice() {
        CameraDeviceWrapper cameraDeviceWrapper;
        synchronized (this.lock) {
            cameraDeviceWrapper = this._cameraDevice;
        }
        return cameraDeviceWrapper;
    }

    public final CameraExtensionSession.StillCaptureLatency getRealtimeCaptureLatency() {
        if (Build.VERSION.SDK_INT >= 31) {
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.cameraCaptureSession;
            CameraCaptureSessionWrapper session = configuredCameraCaptureSession != null ? configuredCameraCaptureSession.getSession() : null;
            AndroidCameraExtensionSession androidCameraExtensionSession = session instanceof AndroidCameraExtensionSession ? (AndroidCameraExtensionSession) session : null;
            if (androidCameraExtensionSession != null) {
                return androidCameraExtensionSession.getRealTimeCaptureLatency();
            }
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " Active");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " CaptureQueueEmpty");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " Closed");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onClosed");
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, this + " Configuration Failed");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onConfigureFailed");
        this.graphListener.onGraphError(new GraphState.GraphStateError(CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false, null));
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " Configured");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#configure");
        configure(cameraCaptureSessionWrapper);
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        cameraCaptureSessionWrapper.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " Ready");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionDisconnected() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " session disconnecting");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onSessionDisconnected");
        disconnect();
        try {
            Trace.beginSection(this + "#onSessionDisconnected Await");
            this.sessionDisconnected.await();
            j59 j59Var = j59.a;
            Trace.endSection();
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionFinalized() {
        if (this.finalized.a(Boolean.FALSE, Boolean.TRUE)) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, this + " session finalizing");
            }
            Debug debug = Debug.INSTANCE;
            Trace.beginSection(this + "#onSessionFinalized");
            shutdown();
            finalizeSession$camera_camera2_pipe(0L);
            Trace.endSection();
        }
    }

    public final void setCameraDevice(CameraDeviceWrapper cameraDeviceWrapper) {
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    this._cameraDevice = cameraDeviceWrapper;
                    if (cameraDeviceWrapper != null) {
                        av0.c(this.scope, null, null, new CaptureSessionState$cameraDevice$2$1(this, null), 3);
                    }
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    public final void shutdown() {
        long j;
        boolean z;
        disconnect();
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSED;
                j = 0;
                if (state != state2) {
                    z = true;
                    if (this._cameraDevice != null && this.hasAttemptedCaptureSession) {
                        int iM320getFinalizeSessionOnCloseBehaviorBm6Tfm4 = this.cameraGraphFlags.m320getFinalizeSessionOnCloseBehaviorBm6Tfm4();
                        CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion companion = CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion;
                        if (!CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m324equalsimpl0(iM320getFinalizeSessionOnCloseBehaviorBm6Tfm4, companion.m328getIMMEDIATEBm6Tfm4())) {
                            if (CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m324equalsimpl0(iM320getFinalizeSessionOnCloseBehaviorBm6Tfm4, companion.m330getTIMEOUTBm6Tfm4())) {
                                j = 2000;
                            } else {
                                z = false;
                            }
                        }
                    }
                } else {
                    z = false;
                }
                this._cameraDevice = null;
                this.state = state2;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            finalizeSession$camera_camera2_pipe(j);
        }
    }

    public String toString() {
        return "CaptureSessionState-" + this.debugId;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
