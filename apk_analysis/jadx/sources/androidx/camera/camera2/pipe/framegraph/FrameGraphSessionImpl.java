package androidx.camera.camera2.pipe.framegraph;

import android.content.res.TypedArray;
import android.hardware.camera2.params.MeteringRectangle;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameCapture;
import androidx.camera.camera2.pipe.FrameGraph;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.config.FrameGraphScope;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.graph.State3A;
import defpackage.e02;
import defpackage.mi2;
import defpackage.mk2;
import defpackage.nl3;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@FrameGraphScope
public final class FrameGraphSessionImpl implements FrameGraph.Session, CameraGraph.Session {
    private final CameraGraph.Session cameraGraphSession;
    private final Controller3A controller3A;
    private final FrameGraphBuffers frameGraphBuffers;
    private final State3A state3ASnapshot;

    public FrameGraphSessionImpl(CameraGraph.Session session, FrameGraphBuffers frameGraphBuffers, Controller3A controller3A) {
        session.getClass();
        frameGraphBuffers.getClass();
        controller3A.getClass();
        this.cameraGraphSession = session;
        this.frameGraphBuffers = frameGraphBuffers;
        this.controller3A = controller3A;
        this.state3ASnapshot = controller3A.state3ASnapshot();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void abort() {
        this.cameraGraphSession.abort();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public FrameCapture capture(Request request) {
        request.getClass();
        return this.cameraGraphSession.capture(request);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        boolean zIsTerminated;
        this.controller3A.reset3A(this.state3ASnapshot);
        AutoCloseable autoCloseable = this.cameraGraphSession;
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
        this.frameGraphBuffers.invalidate();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    /* JADX INFO: renamed from: lock3A--tS25XM */
    public Object mo345lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2, e02<? super mk2<Result3A>> e02Var) {
        return this.cameraGraphSession.mo345lock3AtS25XM(aeMode, afMode, awbMode, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode2, nl3Var, nl3Var2, i, j, j2, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object lock3AForCapture(nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        return this.cameraGraphSession.lock3AForCapture(nl3Var, i, j, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k */
    public mk2<Result3A> mo233setTorchOffNqN7i0k(AeMode aeMode) {
        return this.cameraGraphSession.mo233setTorchOffNqN7i0k(aeMode);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    public mk2<Result3A> setTorchOn() {
        return this.cameraGraphSession.setTorchOn();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void startRepeating(Request request) {
        request.getClass();
        this.cameraGraphSession.startRepeating(request);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void stopRepeating() {
        this.cameraGraphSession.stopRepeating();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void submit(Request request) {
        request.getClass();
        this.cameraGraphSession.submit(request);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: submit3A-ydBZfZg */
    public mk2<Result3A> mo234submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return this.cameraGraphSession.mo234submit3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        return this.cameraGraphSession.unlock3A(bool, bool2, bool3, nl3Var, i, j, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3APostCapture(boolean z, e02<? super mk2<Result3A>> e02Var) {
        return this.cameraGraphSession.unlock3APostCapture(z, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public mk2<Result3A> mo235update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        return this.cameraGraphSession.mo235update3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object lock3AForCapture(boolean z, boolean z2, int i, long j, e02<? super mk2<Result3A>> e02Var) {
        return this.cameraGraphSession.lock3AForCapture(z, z2, i, j, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void submit(List<Request> list) {
        list.getClass();
        this.cameraGraphSession.submit(list);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public List<FrameCapture> capture(List<Request> list) {
        list.getClass();
        return this.cameraGraphSession.capture(list);
    }
}
