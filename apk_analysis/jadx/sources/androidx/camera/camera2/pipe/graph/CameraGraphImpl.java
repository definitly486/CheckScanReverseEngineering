package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.config.ForCameraGraph;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.eg;
import defpackage.f02;
import defpackage.fg;
import defpackage.hd3;
import defpackage.ht;
import defpackage.j59;
import defpackage.kt;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.wg;
import defpackage.y22;
import defpackage.y68;
import defpackage.z22;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class CameraGraphImpl implements CameraGraph {
    private final AudioRestrictionController audioRestrictionController;
    private final CameraController cameraController;
    private final ht closed;
    private final Controller3A controller3A;
    private final FrameCaptureQueue frameCaptureQueue;
    private final FrameDistributor frameDistributor;
    private final GraphListener graphListener;
    private final GraphProcessor graphProcessor;
    private final y22 graphScope;
    private final CameraGraphId id;
    private boolean isForeground;
    private final CameraGraphRequestListenersImpl listeners;
    private final CameraGraphParametersImpl parameters;
    private final GraphSessionLock sessionLock;
    private final StreamGraphImpl streamGraph;
    private final SurfaceGraph surfaceGraph;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl", f = "CameraGraphImpl.kt", l = {175}, m = "acquireSession", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CameraGraphImpl.this.acquireSession(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl", f = "CameraGraphImpl.kt", l = {TsExtractor.TS_PACKET_SIZE, 191}, m = "useSession", v = 1)
    public static final class C04231<T> extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04231(e02<? super C04231> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CameraGraphImpl.this.useSession(null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSessionIn$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSessionIn$1", f = "CameraGraphImpl.kt", l = {204}, m = "invokeSuspend", v = 1)
    public static final class C04241<T> extends pg8 implements bm3<Token, e02<? super T>, Object> {
        final /* synthetic */ dm3<y22, CameraGraph.Session, e02<? super T>, Object> $action;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04241(dm3<? super y22, ? super CameraGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super C04241> e02Var) {
            super(2, e02Var);
            this.$action = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04241 c04241 = CameraGraphImpl.this.new C04241(this.$action, e02Var);
            c04241.L$0 = obj;
            return c04241;
        }

        @Override // defpackage.bm3
        public final Object invoke(Token token, e02<? super T> e02Var) {
            return ((C04241) create(token, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
            Throwable th;
            AutoCloseable autoCloseable;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable = (AutoCloseable) this.L$0;
                try {
                    r57.b(obj);
                    aq5.c(autoCloseable, null);
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        aq5.c(autoCloseable, th);
                        throw th3;
                    }
                }
            }
            r57.b(obj);
            CameraGraphSessionImpl cameraGraphSessionImplCreateSessionFromToken = CameraGraphImpl.this.createSessionFromToken((Token) this.L$0);
            try {
                CameraGraphImpl$useSessionIn$1$1$1 cameraGraphImpl$useSessionIn$1$1$1 = new CameraGraphImpl$useSessionIn$1$1$1(this.$action, cameraGraphSessionImplCreateSessionFromToken, null);
                this.L$0 = cameraGraphSessionImplCreateSessionFromToken;
                this.label = 1;
                Object objC = z22.c(cameraGraphImpl$useSessionIn$1$1$1, this);
                if (objC == a32Var) {
                    return a32Var;
                }
                obj = objC;
                autoCloseable = cameraGraphSessionImplCreateSessionFromToken;
                aq5.c(autoCloseable, null);
                return obj;
            } catch (Throwable th4) {
                th = th4;
                autoCloseable = cameraGraphSessionImplCreateSessionFromToken;
                throw th;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1", f = "CameraGraphImpl.kt", l = {344}, m = "invokeSuspend", v = 1)
    public static final class C04251<T> extends pg8 implements bm3<Token, e02<? super mk2<? extends T>>, Object> {
        final /* synthetic */ bm3<y22, e02<? super mk2<? extends T>>, Object> $block;
        int label;

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1$1", f = "CameraGraphImpl.kt", l = {344}, m = "invokeSuspend", v = 1)
        public static final class C00121 extends pg8 implements bm3<y22, e02<? super mk2<? extends T>>, Object> {
            final /* synthetic */ bm3<y22, e02<? super mk2<? extends T>>, Object> $block;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00121(bm3<? super y22, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var, e02<? super C00121> e02Var) {
                super(2, e02Var);
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00121 c00121 = new C00121(this.$block, e02Var);
                c00121.L$0 = obj;
                return c00121;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super mk2<? extends T>> e02Var) {
                return ((C00121) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                bm3<y22, e02<? super mk2<? extends T>>, Object> bm3Var = this.$block;
                this.label = 1;
                Object objInvoke = bm3Var.invoke(y22Var, this);
                return objInvoke == a32Var ? a32Var : objInvoke;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04251(bm3<? super y22, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var, e02<? super C04251> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04251(this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Token token, e02<? super mk2<? extends T>> e02Var) {
            return ((C04251) create(token, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            C00121 c00121 = new C00121(this.$block, null);
            this.label = 1;
            Object objC = z22.c(c00121, this);
            return objC == a32Var ? a32Var : objC;
        }
    }

    public CameraGraphImpl(CameraGraph.Config config, CameraMetadata cameraMetadata, GraphProcessor graphProcessor, GraphListener graphListener, StreamGraphImpl streamGraphImpl, SurfaceGraph surfaceGraph, CameraController cameraController, FrameDistributor frameDistributor, FrameCaptureQueue frameCaptureQueue, AudioRestrictionController audioRestrictionController, CameraGraphId cameraGraphId, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl, GraphSessionLock graphSessionLock, @ForCameraGraph y22 y22Var, Controller3A controller3A) {
        config.getClass();
        cameraMetadata.getClass();
        graphProcessor.getClass();
        graphListener.getClass();
        streamGraphImpl.getClass();
        surfaceGraph.getClass();
        cameraController.getClass();
        frameDistributor.getClass();
        frameCaptureQueue.getClass();
        audioRestrictionController.getClass();
        cameraGraphId.getClass();
        cameraGraphParametersImpl.getClass();
        cameraGraphRequestListenersImpl.getClass();
        graphSessionLock.getClass();
        y22Var.getClass();
        controller3A.getClass();
        this.graphProcessor = graphProcessor;
        this.graphListener = graphListener;
        this.streamGraph = streamGraphImpl;
        this.surfaceGraph = surfaceGraph;
        this.cameraController = cameraController;
        this.frameDistributor = frameDistributor;
        this.frameCaptureQueue = frameCaptureQueue;
        this.audioRestrictionController = audioRestrictionController;
        this.id = cameraGraphId;
        this.parameters = cameraGraphParametersImpl;
        this.listeners = cameraGraphRequestListenersImpl;
        this.sessionLock = graphSessionLock;
        this.graphScope = y22Var;
        this.controller3A = controller3A;
        this.closed = kt.a(false);
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, Debug.INSTANCE.formatCameraGraphProperties(cameraMetadata, config, this));
        }
        if (CameraGraph.OperatingMode.m335equalsimpl0(config.m314getSessionMode2uNL3no(), CameraGraph.OperatingMode.Companion.m341getHIGH_SPEED2uNL3no())) {
            if (streamGraphImpl.getOutputs().isEmpty()) {
                fg.c("Cannot create a HIGH_SPEED CameraGraph without outputs.");
                throw null;
            }
            if (streamGraphImpl.getOutputs().size() > 2) {
                eg.d(streamGraphImpl.getOutputs(), "Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are ");
                throw null;
            }
            List<OutputStream> outputs = streamGraphImpl.getOutputs();
            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                Iterator<T> it = outputs.iterator();
                while (it.hasNext()) {
                    if (!((OutputStream) it.next()).isValidForHighSpeedOperatingMode()) {
                        eg.d(this.streamGraph.getOutputs(), "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are ");
                        throw null;
                    }
                }
            }
        }
        if (config.getInput() != null) {
            if (config.getInput().isEmpty()) {
                fg.c("At least one InputConfiguration is required for reprocessing");
                throw null;
            }
            if (Build.VERSION.SDK_INT < 31 && config.getInput().size() > 1) {
                fg.c("Multi resolution reprocessing not supported under Android S");
                throw null;
            }
        }
        if (!this.streamGraph.getImageSourceMap$camera_camera2_pipe().isEmpty()) {
            this.surfaceGraph.maybeUpdateSurfaces$camera_camera2_pipe();
        }
        this.isForeground = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraGraphSessionImpl createSessionFromToken(Token token) {
        return new CameraGraphSessionImpl(token, this.graphProcessor, this.controller3A, this.frameCaptureQueue, getParameters(), getListeners());
    }

    private final <T> mk2<T> withSessionLockAsync(bm3<? super y22, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var) {
        return this.sessionLock.withTokenInAsync$camera_camera2_pipe(this.graphScope, new C04251(bm3Var, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public Object acquireSession(e02<? super CameraGraph.Session> e02Var) {
        AnonymousClass1 anonymousClass1;
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
        Object objAcquireToken$camera_camera2_pipe = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objAcquireToken$camera_camera2_pipe);
            GraphSessionLock graphSessionLock = this.sessionLock;
            anonymousClass1.label = 1;
            objAcquireToken$camera_camera2_pipe = graphSessionLock.acquireToken$camera_camera2_pipe(anonymousClass1);
            if (objAcquireToken$camera_camera2_pipe == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objAcquireToken$camera_camera2_pipe);
        }
        return createSessionFromToken((Token) objAcquireToken$camera_camera2_pipe);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public CameraGraph.Session acquireSessionOrNull() {
        Token tokenTryAcquireToken$camera_camera2_pipe = this.sessionLock.tryAcquireToken$camera_camera2_pipe();
        if (tokenTryAcquireToken$camera_camera2_pipe == null) {
            return null;
        }
        return createSessionFromToken(tokenTryAcquireToken$camera_camera2_pipe);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        if (this.closed.a()) {
            Debug debug = Debug.INSTANCE;
            Trace.beginSection(this + "#close");
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i(Log.TAG, "Closing " + this);
            }
            this.graphProcessor.close();
            this.cameraController.close();
            this.frameDistributor.close();
            this.frameCaptureQueue.close();
            this.surfaceGraph.close();
            this.streamGraph.close();
            this.audioRestrictionController.removeCameraGraph(this);
            z22.b(this.graphScope, null);
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public y68<GraphState> getGraphState() {
        return this.graphProcessor.getGraphState();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public CameraGraphId getId() {
        return this.id;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public hd3<FrameInfo> getLatestFrameInfo() {
        return s0.a(new CameraGraphImpl$latestFrameInfo$1(this, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public hd3<FrameNumber> getLatestFrameNumber() {
        return s0.a(new CameraGraphImpl$latestFrameNumber$1(this, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public StreamGraph getStreams() {
        return this.streamGraph;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public boolean isForeground() {
        return this.isForeground;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: lock3A-vIrNa9k */
    public mk2<Result3A> mo348lock3AvIrNa9k(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2) {
        return withSessionLockAsync(new CameraGraphImpl$lock3A$1(this, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode2, nl3Var, nl3Var2, i, j, j2, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void setForeground(boolean z) {
        this.isForeground = z;
        this.cameraController.setForeground(z);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: setSurface-NYG5g8E */
    public void mo349setSurfaceNYG5g8E(int i, Surface surface) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) StreamId.m728toStringimpl(i)) + "#setSurface");
        if (surface != null && !surface.isValid() && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, this + "#setSurface: " + surface + " is invalid");
        }
        this.surfaceGraph.m926setNYG5g8E(i, surface);
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k */
    public mk2<Result3A> mo233setTorchOffNqN7i0k(AeMode aeMode) {
        return withSessionLockAsync(new CameraGraphImpl$setTorchOff$1(this, aeMode, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    public mk2<Result3A> setTorchOn() {
        return withSessionLockAsync(new C04211(null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void start() {
        if (this.closed.b()) {
            wg.c(this, "Cannot start ", " after calling close()");
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#start");
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, "Starting " + this);
        }
        this.graphListener.onGraphStarting();
        this.cameraController.start();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void stop() {
        if (this.closed.b()) {
            wg.c(this, "Cannot stop ", " after calling close()");
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#stop");
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, "Stopping " + this);
        }
        this.graphListener.onGraphStopping();
        this.cameraController.stop();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: submit3A-ydBZfZg */
    public mk2<Result3A> mo234submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return withSessionLockAsync(new CameraGraphImpl$submit3A$1(this, aeMode, afMode, awbMode, list, list2, list3, null));
    }

    public String toString() {
        return getId().toString();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public mk2<Result3A> unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j) {
        return withSessionLockAsync(new C04221(bool, bool2, bool3, nl3Var, i, j, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public mk2<Result3A> mo235update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return withSessionLockAsync(new CameraGraphImpl$update3A$1(this, aeMode, afMode, awbMode, list, list2, list3, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: updateAudioRestrictionMode-LwUUkyU */
    public void mo350updateAudioRestrictionModeLwUUkyU(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.audioRestrictionController.mo752updateCameraGraphAudioRestrictionModeTyYSX5E(this, i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r8 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.camera.camera2.pipe.graph.CameraGraphImpl] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Object useSession(defpackage.dm3<? super defpackage.y22, ? super androidx.camera.camera2.pipe.CameraGraph.Session, ? super defpackage.e02<? super T>, ? extends java.lang.Object> r7, defpackage.e02<? super T> r8) throws java.lang.Exception {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.pipe.graph.CameraGraphImpl.C04231
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$1 r0 = (androidx.camera.camera2.pipe.graph.CameraGraphImpl.C04231) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$1 r0 = new androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L40
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$0
            java.lang.AutoCloseable r6 = (java.lang.AutoCloseable) r6
            defpackage.r57.b(r8)     // Catch: java.lang.Throwable -> L2f
            goto L64
        L2f:
            r7 = move-exception
            goto L68
        L31:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r5
        L37:
            java.lang.Object r6 = r0.L$0
            r7 = r6
            dm3 r7 = (defpackage.dm3) r7
            defpackage.r57.b(r8)
            goto L4e
        L40:
            defpackage.r57.b(r8)
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = r6.acquireSession(r0)
            if (r8 != r1) goto L4e
            goto L63
        L4e:
            r6 = r8
            java.lang.AutoCloseable r6 = (java.lang.AutoCloseable) r6
            r8 = r6
            androidx.camera.camera2.pipe.CameraGraph$Session r8 = (androidx.camera.camera2.pipe.CameraGraph.Session) r8     // Catch: java.lang.Throwable -> L2f
            androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$2$1 r2 = new androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSession$2$1     // Catch: java.lang.Throwable -> L2f
            r2.<init>(r7, r8, r5)     // Catch: java.lang.Throwable -> L2f
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L2f
            r0.label = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = defpackage.z22.c(r2, r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r1) goto L64
        L63:
            return r1
        L64:
            defpackage.aq5.c(r6, r5)
            return r8
        L68:
            throw r7     // Catch: java.lang.Throwable -> L69
        L69:
            r8 = move-exception
            defpackage.aq5.c(r6, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.CameraGraphImpl.useSession(dm3, e02):java.lang.Object");
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public <T> mk2<T> useSessionIn(y22 y22Var, dm3<? super y22, ? super CameraGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var) {
        y22Var.getClass();
        dm3Var.getClass();
        return this.sessionLock.withTokenIn$camera_camera2_pipe(y22Var, new C04241(dm3Var, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public CameraGraphRequestListenersImpl getListeners() {
        return this.listeners;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public CameraGraphParametersImpl getParameters() {
        return this.parameters;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$setTorchOn$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$setTorchOn$1", f = "CameraGraphImpl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04211 extends pg8 implements bm3<y22, e02<? super mk2<? extends Result3A>>, Object> {
        int label;

        public C04211(e02<? super C04211> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraGraphImpl.this.new C04211(e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(y22 y22Var, e02<? super mk2<Result3A>> e02Var) {
            return ((C04211) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return CameraGraphImpl.this.controller3A.setTorchOn();
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super mk2<? extends Result3A>> e02Var) {
            return invoke2(y22Var, (e02<? super mk2<Result3A>>) e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$unlock3A$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$unlock3A$1", f = "CameraGraphImpl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04221 extends pg8 implements bm3<y22, e02<? super mk2<? extends Result3A>>, Object> {
        final /* synthetic */ Boolean $ae;
        final /* synthetic */ Boolean $af;
        final /* synthetic */ Boolean $awb;
        final /* synthetic */ int $frameLimit;
        final /* synthetic */ long $timeLimitNs;
        final /* synthetic */ nl3<FrameMetadata, Boolean> $unlockedCondition;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04221(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super C04221> e02Var) {
            super(2, e02Var);
            this.$ae = bool;
            this.$af = bool2;
            this.$awb = bool3;
            this.$unlockedCondition = nl3Var;
            this.$frameLimit = i;
            this.$timeLimitNs = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraGraphImpl.this.new C04221(this.$ae, this.$af, this.$awb, this.$unlockedCondition, this.$frameLimit, this.$timeLimitNs, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(y22 y22Var, e02<? super mk2<Result3A>> e02Var) {
            return ((C04221) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return CameraGraphImpl.this.controller3A.unlock3A(this.$ae, this.$af, this.$awb, this.$unlockedCondition, this.$frameLimit, new Long(this.$timeLimitNs));
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super mk2<? extends Result3A>> e02Var) {
            return invoke2(y22Var, (e02<? super mk2<Result3A>>) e02Var);
        }
    }
}
