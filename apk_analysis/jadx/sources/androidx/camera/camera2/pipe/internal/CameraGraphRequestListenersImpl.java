package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestListeners;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.config.ForCameraGraph;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphProcessor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.u96;
import defpackage.y22;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class CameraGraphRequestListenersImpl implements RequestListeners {
    private boolean dirty;
    private final GraphProcessor graphProcessor;
    private final y22 graphScope;
    private final Set<Request.Listener> listeners;
    private final Object lock;
    private final GraphSessionLock sessionLock;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl$applyUpdate$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl$applyUpdate$1", f = "CameraGraphRequestListenersImpl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<Token, e02<? super j59>, Object> {
        final /* synthetic */ List<Request.Listener> $unappliedListeners;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(List<? extends Request.Listener> list, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$unappliedListeners = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraGraphRequestListenersImpl.this.new AnonymousClass1(this.$unappliedListeners, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Token token, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(token, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CameraGraphRequestListenersImpl.this.graphProcessor.updateRequestListeners(this.$unappliedListeners);
            return j59.a;
        }
    }

    public CameraGraphRequestListenersImpl(GraphSessionLock graphSessionLock, GraphProcessor graphProcessor, @ForCameraGraph y22 y22Var) {
        graphSessionLock.getClass();
        graphProcessor.getClass();
        y22Var.getClass();
        this.sessionLock = graphSessionLock;
        this.graphProcessor = graphProcessor;
        this.graphScope = y22Var;
        this.lock = new Object();
        this.listeners = new LinkedHashSet();
    }

    private final void applyUpdate() {
        List<Request.Listener> listFetchUpdatedListeners$camera_camera2_pipe = fetchUpdatedListeners$camera_camera2_pipe();
        if (listFetchUpdatedListeners$camera_camera2_pipe == null) {
            return;
        }
        this.sessionLock.withTokenIn$camera_camera2_pipe(this.graphScope, new AnonymousClass1(listFetchUpdatedListeners$camera_camera2_pipe, null));
    }

    @Override // androidx.camera.camera2.pipe.RequestListeners
    public void add(Request.Listener listener) {
        listener.getClass();
        addAll(u96.h(listener));
    }

    @Override // androidx.camera.camera2.pipe.RequestListeners
    public void addAll(List<? extends Request.Listener> list) {
        boolean z;
        list.getClass();
        synchronized (this.lock) {
            try {
                if (!this.listeners.addAll(list) || this.dirty) {
                    z = false;
                } else {
                    z = true;
                    this.dirty = true;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            applyUpdate();
        }
    }

    public final List<Request.Listener> fetchUpdatedListeners$camera_camera2_pipe() {
        synchronized (this.lock) {
            if (!this.dirty) {
                return null;
            }
            this.dirty = false;
            return qn1.t0(this.listeners);
        }
    }

    @Override // androidx.camera.camera2.pipe.RequestListeners
    public void remove(Request.Listener listener) {
        listener.getClass();
        removeAll(u96.h(listener));
    }

    @Override // androidx.camera.camera2.pipe.RequestListeners
    public void removeAll(List<? extends Request.Listener> list) {
        boolean z;
        list.getClass();
        synchronized (this.lock) {
            try {
                if (!this.listeners.removeAll(list) || this.dirty) {
                    z = false;
                } else {
                    z = true;
                    this.dirty = true;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            applyUpdate();
        }
    }
}
