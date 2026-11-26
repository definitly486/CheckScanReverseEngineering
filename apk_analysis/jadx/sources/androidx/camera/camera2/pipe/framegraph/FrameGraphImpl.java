package androidx.camera.camera2.pipe.framegraph;

import android.content.res.TypedArray;
import android.hardware.camera2.params.MeteringRectangle;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.Surface;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraControls3A;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.FrameBuffer;
import androidx.camera.camera2.pipe.FrameGraph;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Parameters;
import androidx.camera.camera2.pipe.RequestListeners;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.config.FrameGraphCoroutineScope;
import androidx.camera.camera2.pipe.config.FrameGraphScope;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.mi2;
import defpackage.mk2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vh;
import defpackage.y22;
import defpackage.y68;
import defpackage.z22;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@FrameGraphScope
public final class FrameGraphImpl implements FrameGraph, CameraControls3A {
    private final CameraGraph cameraGraph;
    private final Controller3A controller3A;
    private final FrameDistributor frameDistributor;
    private final FrameGraphBuffers frameGraphBuffers;
    private final y22 frameGraphCoroutineScope;
    private final y68<GraphState> graphState;
    private boolean isForeground;
    private final hd3<FrameInfo> latestFrameInfo;
    private final hd3<FrameNumber> latestFrameNumber;
    private final StreamGraph streams;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$acquireSession$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.FrameGraphImpl", f = "FrameGraphImpl.kt", l = {153}, m = "acquireSession", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FrameGraphImpl.this.acquireSession(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$useSession$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$useSession$2", f = "FrameGraphImpl.kt", l = {164}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements dm3<y22, CameraGraph.Session, e02<? super T>, Object> {
        final /* synthetic */ dm3<y22, FrameGraph.Session, e02<? super T>, Object> $action;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(dm3<? super y22, ? super FrameGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
            this.$action = dm3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(y22 y22Var, CameraGraph.Session session, e02<? super T> e02Var) {
            AnonymousClass2 anonymousClass2 = FrameGraphImpl.this.new AnonymousClass2(this.$action, e02Var);
            anonymousClass2.L$0 = y22Var;
            anonymousClass2.L$1 = session;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
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
                } catch (Throwable th) {
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        aq5.c(autoCloseable, th);
                        throw th2;
                    }
                }
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            FrameGraph.Session sessionCreateSession = FrameGraphImpl.this.createSession((CameraGraph.Session) this.L$1);
            dm3<y22, FrameGraph.Session, e02<? super T>, Object> dm3Var = this.$action;
            try {
                this.L$0 = sessionCreateSession;
                this.label = 1;
                obj = dm3Var.invoke(y22Var, sessionCreateSession, this);
                if (obj == a32Var) {
                    return a32Var;
                }
                autoCloseable = sessionCreateSession;
                aq5.c(autoCloseable, null);
                return obj;
            } catch (Throwable th3) {
                th = th3;
                autoCloseable = sessionCreateSession;
                throw th;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$useSessionIn$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$useSessionIn$1", f = "FrameGraphImpl.kt", l = {173}, m = "invokeSuspend", v = 1)
    public static final class C04201<T> extends pg8 implements dm3<y22, CameraGraph.Session, e02<? super T>, Object> {
        final /* synthetic */ dm3<y22, FrameGraph.Session, e02<? super T>, Object> $action;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04201(dm3<? super y22, ? super FrameGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super C04201> e02Var) {
            super(3, e02Var);
            this.$action = dm3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(y22 y22Var, CameraGraph.Session session, e02<? super T> e02Var) {
            C04201 c04201 = FrameGraphImpl.this.new C04201(this.$action, e02Var);
            c04201.L$0 = y22Var;
            c04201.L$1 = session;
            return c04201.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
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
                } catch (Throwable th) {
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        aq5.c(autoCloseable, th);
                        throw th2;
                    }
                }
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            FrameGraph.Session sessionCreateSession = FrameGraphImpl.this.createSession((CameraGraph.Session) this.L$1);
            dm3<y22, FrameGraph.Session, e02<? super T>, Object> dm3Var = this.$action;
            try {
                this.L$0 = sessionCreateSession;
                this.label = 1;
                obj = dm3Var.invoke(y22Var, sessionCreateSession, this);
                if (obj == a32Var) {
                    return a32Var;
                }
                autoCloseable = sessionCreateSession;
                aq5.c(autoCloseable, null);
                return obj;
            } catch (Throwable th3) {
                th = th3;
                autoCloseable = sessionCreateSession;
                throw th;
            }
        }
    }

    public FrameGraphImpl(CameraGraph cameraGraph, FrameDistributor frameDistributor, FrameGraphBuffers frameGraphBuffers, @FrameGraphCoroutineScope y22 y22Var, Controller3A controller3A) {
        cameraGraph.getClass();
        frameDistributor.getClass();
        frameGraphBuffers.getClass();
        y22Var.getClass();
        controller3A.getClass();
        this.cameraGraph = cameraGraph;
        this.frameDistributor = frameDistributor;
        this.frameGraphBuffers = frameGraphBuffers;
        this.frameGraphCoroutineScope = y22Var;
        this.controller3A = controller3A;
        frameDistributor.setFrameStartedListener(frameGraphBuffers);
        this.streams = cameraGraph.getStreams();
        this.graphState = cameraGraph.getGraphState();
        this.latestFrameNumber = cameraGraph.getLatestFrameNumber();
        this.latestFrameInfo = cameraGraph.getLatestFrameInfo();
        this.isForeground = cameraGraph.isForeground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameGraph.Session createSession(CameraGraph.Session session) {
        return new FrameGraphSessionImpl(session, this.frameGraphBuffers, this.controller3A);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public Object acquireSession(e02<? super FrameGraph.Session> e02Var) {
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
        Object objAcquireSession = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objAcquireSession);
            CameraGraph cameraGraph = this.cameraGraph;
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            objAcquireSession = cameraGraph.acquireSession(anonymousClass1);
            if (objAcquireSession == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (FrameGraphImpl) anonymousClass1.L$0;
            r57.b(objAcquireSession);
        }
        return this.createSession((CameraGraph.Session) objAcquireSession);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public FrameGraph.Session acquireSessionOrNull() {
        CameraGraph.Session sessionAcquireSessionOrNull = this.cameraGraph.acquireSessionOrNull();
        if (sessionAcquireSessionOrNull != null) {
            return createSession(sessionAcquireSessionOrNull);
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.FrameGraph
    public FrameBuffer captureWith(Set<StreamId> set, Map<Object, ? extends Object> map, int i) {
        set.getClass();
        map.getClass();
        return this.frameGraphBuffers.attach$camera_camera2_pipe(set, map, i);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        boolean zIsTerminated;
        AutoCloseable autoCloseable = this.cameraGraph;
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
        z22.b(this.frameGraphCoroutineScope, null);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public y68<GraphState> getGraphState() {
        return this.graphState;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public CameraGraphId getId() {
        return this.cameraGraph.getId();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public hd3<FrameInfo> getLatestFrameInfo() {
        return this.latestFrameInfo;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public hd3<FrameNumber> getLatestFrameNumber() {
        return this.latestFrameNumber;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public RequestListeners getListeners() {
        return this.cameraGraph.getListeners();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public Parameters getParameters() {
        return this.cameraGraph.getParameters();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public StreamGraph getStreams() {
        return this.streams;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public boolean isForeground() {
        return this.isForeground;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: lock3A-vIrNa9k */
    public mk2<Result3A> mo348lock3AvIrNa9k(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2) {
        return this.cameraGraph.mo348lock3AvIrNa9k(aeMode, afMode, awbMode, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode2, nl3Var, nl3Var2, i, j, j2);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void setForeground(boolean z) {
        this.isForeground = z;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: setSurface-NYG5g8E */
    public void mo349setSurfaceNYG5g8E(int i, Surface surface) {
        this.cameraGraph.mo349setSurfaceNYG5g8E(i, surface);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k */
    public mk2<Result3A> mo233setTorchOffNqN7i0k(AeMode aeMode) {
        return this.cameraGraph.mo233setTorchOffNqN7i0k(aeMode);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    public mk2<Result3A> setTorchOn() {
        return this.cameraGraph.setTorchOn();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void start() {
        this.cameraGraph.start();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void stop() {
        this.cameraGraph.stop();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: submit3A-ydBZfZg */
    public mk2<Result3A> mo234submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return this.cameraGraph.mo234submit3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public mk2<Result3A> unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j) {
        return this.cameraGraph.unlock3A(bool, bool2, bool3, nl3Var, i, j);
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, CameraGraph.class)) {
            return (T) this.cameraGraph;
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public mk2<Result3A> mo235update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return this.cameraGraph.mo235update3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: updateAudioRestrictionMode-LwUUkyU */
    public void mo350updateAudioRestrictionModeLwUUkyU(int i) {
        this.cameraGraph.mo350updateAudioRestrictionModeLwUUkyU(i);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public <T> Object useSession(dm3<? super y22, ? super FrameGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super T> e02Var) {
        return this.cameraGraph.useSession(new AnonymousClass2(dm3Var, null), e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public <T> mk2<T> useSessionIn(y22 y22Var, dm3<? super y22, ? super FrameGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var) {
        y22Var.getClass();
        dm3Var.getClass();
        return this.cameraGraph.useSessionIn(y22Var, new C04201(dm3Var, null));
    }
}
