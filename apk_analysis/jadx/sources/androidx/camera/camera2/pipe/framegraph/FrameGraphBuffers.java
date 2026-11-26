package androidx.camera.camera2.pipe.framegraph;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameBuffer;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.config.FrameGraphCoroutineScope;
import androidx.camera.camera2.pipe.config.FrameGraphScope;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@FrameGraphScope
public final class FrameGraphBuffers implements FrameDistributor.FrameStartedListener {
    private final List<FrameBufferImpl> buffers;
    private final CameraGraph cameraGraph;
    private final y22 frameGraphCoroutineScope;
    private final Object lock;
    private Map<Object, Object> parameters;
    private Set<StreamId> streams;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.FrameGraphBuffers$invalidate$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.FrameGraphBuffers$invalidate$2", f = "FrameGraphBuffers.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements dm3<y22, CameraGraph.Session, e02<? super j59>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(y22 y22Var, CameraGraph.Session session, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = session;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((CameraGraph.Session) this.L$0).stopRepeating();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.FrameGraphBuffers$invalidate$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.FrameGraphBuffers$invalidate$3", f = "FrameGraphBuffers.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements dm3<y22, CameraGraph.Session, e02<? super j59>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(y22 y22Var, CameraGraph.Session session, e02<? super j59> e02Var) {
            AnonymousClass3 anonymousClass3 = FrameGraphBuffers.this.new AnonymousClass3(e02Var);
            anonymousClass3.L$0 = session;
            return anonymousClass3.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((CameraGraph.Session) this.L$0).startRepeating(new Request(qn1.t0(FrameGraphBuffers.this.streams), RequestsKt.filterToCaptureRequestParameters(FrameGraphBuffers.this.parameters), RequestsKt.filterToMetadataParameters(FrameGraphBuffers.this.parameters), null, null, null, 56, null));
            return j59.a;
        }
    }

    public FrameGraphBuffers(CameraGraph cameraGraph, @FrameGraphCoroutineScope y22 y22Var) {
        cameraGraph.getClass();
        y22Var.getClass();
        this.cameraGraph = cameraGraph;
        this.frameGraphCoroutineScope = y22Var;
        this.lock = new Object();
        this.buffers = new ArrayList();
        this.streams = new LinkedHashSet();
        this.parameters = new LinkedHashMap();
    }

    private final boolean updateStreamsAndParameters() {
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (this.lock) {
            try {
                for (FrameBufferImpl frameBufferImpl : this.buffers) {
                    linkedHashSet.addAll(frameBufferImpl.getStreams());
                    for (Map.Entry<Object, Object> entry : frameBufferImpl.getParameters().entrySet()) {
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        if (!(key instanceof CaptureRequest.Key) && !(key instanceof Metadata.Key)) {
                            throw new IllegalStateException(("Invalid type for " + entry.getKey()).toString());
                        }
                        if (linkedHashMap.containsKey(key) && !aa4.e(linkedHashMap.get(key), value)) {
                            throw new IllegalStateException("Conflicting parameter values, " + key + " and " + this.parameters.get(key) + " have different values.");
                        }
                        if (value != null) {
                            linkedHashMap.put(key, value);
                        }
                    }
                }
                z = (linkedHashSet.equals(this.streams) && linkedHashMap.equals(this.parameters)) ? false : true;
                this.streams = linkedHashSet;
                this.parameters = linkedHashMap;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final FrameBuffer attach$camera_camera2_pipe(Set<StreamId> set, Map<Object, ? extends Object> map, int i) {
        boolean zUpdateStreamsAndParameters;
        set.getClass();
        map.getClass();
        FrameBufferImpl frameBufferImpl = new FrameBufferImpl(this, set, map, i);
        synchronized (this.lock) {
            this.buffers.add(frameBufferImpl);
            zUpdateStreamsAndParameters = updateStreamsAndParameters();
        }
        if (zUpdateStreamsAndParameters) {
            invalidate();
        }
        return frameBufferImpl;
    }

    public final void detach$camera_camera2_pipe(FrameBufferImpl frameBufferImpl) {
        boolean zUpdateStreamsAndParameters;
        frameBufferImpl.getClass();
        synchronized (this.lock) {
            this.buffers.remove(frameBufferImpl);
            zUpdateStreamsAndParameters = updateStreamsAndParameters();
        }
        if (zUpdateStreamsAndParameters) {
            invalidate();
        }
    }

    public final void invalidate() {
        if (!this.buffers.isEmpty()) {
            this.cameraGraph.useSessionIn(this.frameGraphCoroutineScope, new AnonymousClass3(null));
            return;
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "No available buffer, invoke stop repeating.");
        }
        this.cameraGraph.useSessionIn(this.frameGraphCoroutineScope, new AnonymousClass2(null));
    }

    @Override // androidx.camera.camera2.pipe.internal.FrameDistributor.FrameStartedListener
    public void onFrameStarted(FrameReference frameReference) {
        frameReference.getClass();
        synchronized (this.lock) {
            try {
                Iterator<FrameBufferImpl> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().onFrameStarted(frameReference);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
