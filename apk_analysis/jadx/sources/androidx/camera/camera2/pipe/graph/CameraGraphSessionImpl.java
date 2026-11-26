package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameCapture;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import defpackage.ah;
import defpackage.e02;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.wg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphSessionImpl implements CameraGraph.Session {
    private final Controller3A controller3A;
    private final int debugId;
    private final FrameCaptureQueue frameCaptureQueue;
    private final GraphProcessor graphProcessor;
    private final CameraGraphRequestListenersImpl listeners;
    private final CameraGraphParametersImpl parameters;
    private final Token token;

    public CameraGraphSessionImpl(Token token, GraphProcessor graphProcessor, Controller3A controller3A, FrameCaptureQueue frameCaptureQueue, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl) {
        token.getClass();
        graphProcessor.getClass();
        controller3A.getClass();
        frameCaptureQueue.getClass();
        cameraGraphParametersImpl.getClass();
        cameraGraphRequestListenersImpl.getClass();
        this.token = token;
        this.graphProcessor = graphProcessor;
        this.controller3A = controller3A;
        this.frameCaptureQueue = frameCaptureQueue;
        this.parameters = cameraGraphParametersImpl;
        this.listeners = cameraGraphRequestListenersImpl;
        this.debugId = CameraGraphSessionImplKt.getCameraGraphSessionIds().b();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void abort() {
        if (this.token.getReleased()) {
            wg.c(this, "Cannot call abort on ", " after close.");
        } else {
            this.graphProcessor.abort();
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public FrameCapture capture(Request request) {
        request.getClass();
        FrameCaptureQueue.FrameCaptureImpl frameCaptureImplEnqueue = this.frameCaptureQueue.enqueue(request);
        submit(request);
        return frameCaptureImplEnqueue;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.parameters.flush();
        List<Request.Listener> listFetchUpdatedListeners$camera_camera2_pipe = this.listeners.fetchUpdatedListeners$camera_camera2_pipe();
        if (listFetchUpdatedListeners$camera_camera2_pipe != null) {
            this.graphProcessor.updateRequestListeners(listFetchUpdatedListeners$camera_camera2_pipe);
        }
        this.token.release();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    /* JADX INFO: renamed from: lock3A--tS25XM */
    public Object mo345lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2, e02<? super mk2<Result3A>> e02Var) {
        if (!this.token.getReleased()) {
            return this.controller3A.m881lock3AQz1gx5w(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode2, nl3Var, nl3Var2, i, new Long(j), new Long(j2), e02Var);
        }
        wg.c(this, "Cannot call lock3A on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object lock3AForCapture(nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        if (!this.token.getReleased()) {
            return this.controller3A.lock3AForCapture(nl3Var, i, j);
        }
        wg.c(this, "Cannot call lock3AForCapture on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k */
    public mk2<Result3A> mo233setTorchOffNqN7i0k(AeMode aeMode) {
        if (!this.token.getReleased()) {
            return this.controller3A.m882setTorchOffNqN7i0k(aeMode);
        }
        wg.c(this, "Cannot call setTorchOff on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    public mk2<Result3A> setTorchOn() {
        if (!this.token.getReleased()) {
            return this.controller3A.setTorchOn();
        }
        wg.c(this, "Cannot call setTorchOn on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void startRepeating(Request request) {
        request.getClass();
        if (this.token.getReleased()) {
            wg.c(this, "Cannot call startRepeating on ", " after close.");
        } else {
            this.graphProcessor.setRepeatingRequest(request);
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void stopRepeating() {
        if (this.token.getReleased()) {
            wg.c(this, "Cannot call stopRepeating on ", " after close.");
        } else {
            this.graphProcessor.setRepeatingRequest(null);
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void submit(List<Request> list) {
        list.getClass();
        if (this.token.getReleased()) {
            wg.c(this, "Cannot call submit on ", " after close.");
        } else if (list.isEmpty()) {
            ah.f("Cannot call submit with an empty list of Requests!");
        } else {
            this.graphProcessor.submit(list);
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: submit3A-ydBZfZg */
    public mk2<Result3A> mo234submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        if (!this.token.getReleased()) {
            return this.controller3A.m883submit3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
        }
        wg.c(this, "Cannot call submit3A on ", " after close.");
        return null;
    }

    public String toString() {
        return "CameraGraph.Session-" + this.debugId;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        if (!this.token.getReleased()) {
            return this.controller3A.unlock3A(bool, bool2, bool3, nl3Var, i, new Long(j));
        }
        wg.c(this, "Cannot call unlock3A on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3APostCapture(boolean z, e02<? super mk2<Result3A>> e02Var) {
        if (!this.token.getReleased()) {
            return this.controller3A.unlock3APostCapture(z);
        }
        wg.c(this, "Cannot call unlock3APostCapture on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public mk2<Result3A> mo235update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        if (!this.token.getReleased()) {
            return Controller3A.m880update3A169HPGg$default(this.controller3A, aeMode, afMode, awbMode, null, list, list2, list3, 8, null);
        }
        wg.c(this, "Cannot call update3A on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public List<FrameCapture> capture(List<Request> list) {
        list.getClass();
        List<FrameCapture> listEnqueue = this.frameCaptureQueue.enqueue(list);
        submit(list);
        return listEnqueue;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object lock3AForCapture(boolean z, boolean z2, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        if (!this.token.getReleased()) {
            return this.controller3A.lock3AForCapture(z, z2, i, j);
        }
        wg.c(this, "Cannot call lock3AForCapture on ", " after close.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void submit(Request request) {
        request.getClass();
        if (!this.token.getReleased()) {
            this.graphProcessor.submit(request);
        } else {
            wg.c(this, "Cannot call submit on ", " after close.");
        }
    }
}
