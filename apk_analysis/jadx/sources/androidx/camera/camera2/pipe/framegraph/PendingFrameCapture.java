package androidx.camera.camera2.pipe.framegraph;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.Frame;
import androidx.camera.camera2.pipe.FrameCapture;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.Request;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bj;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.mi2;
import defpackage.r07;
import defpackage.r57;
import defpackage.xp1;
import defpackage.yp1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class PendingFrameCapture implements FrameCapture {
    private boolean aborted;
    private boolean closed;
    private final xp1<FrameCapture> deferred;
    private final Object lock;
    private List<Frame.Listener> pendingListeners;
    private final Request request;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.framegraph.PendingFrameCapture$awaitFrame$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.framegraph.PendingFrameCapture", f = "PendingFrameCapture.kt", l = {83, 83}, m = "awaitFrame", v = 1)
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
            return PendingFrameCapture.this.awaitFrame(this);
        }
    }

    public PendingFrameCapture(Request request) {
        request.getClass();
        this.request = request;
        this.lock = new Object();
        this.deferred = new yp1();
        this.pendingListeners = new ArrayList();
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [T, java.util.List<androidx.camera.camera2.pipe.Frame$Listener>] */
    private final void terminate(boolean z) throws Exception {
        boolean zIsTerminated;
        r07 r07Var = new r07();
        synchronized (this.lock) {
            try {
                if (!this.closed && !this.aborted) {
                    if (z) {
                        this.closed = true;
                    } else {
                        this.aborted = true;
                    }
                    this.deferred.f(null);
                    ?? r6 = this.pendingListeners;
                    this.pendingListeners = null;
                    r07Var.b = r6;
                    AutoCloseable autoCloseableM = this.deferred.m();
                    j59 j59Var = j59.a;
                    T t = r07Var.b;
                    if (t != 0) {
                        Iterator it = ((List) t).iterator();
                        while (it.hasNext()) {
                            ((Frame.Listener) it.next()).onFrameComplete();
                        }
                    }
                    AutoCloseable autoCloseable = (FrameCapture) autoCloseableM;
                    if (autoCloseable != null) {
                        if (autoCloseable instanceof AutoCloseable) {
                            autoCloseable.close();
                            return;
                        }
                        if (!(autoCloseable instanceof ExecutorService)) {
                            if (autoCloseable instanceof TypedArray) {
                                ((TypedArray) autoCloseable).recycle();
                                return;
                            }
                            if (autoCloseable instanceof MediaMetadataRetriever) {
                                ((MediaMetadataRetriever) autoCloseable).release();
                                return;
                            } else if (autoCloseable instanceof MediaDrm) {
                                ((MediaDrm) autoCloseable).release();
                                return;
                            } else {
                                mi2.b();
                                return;
                            }
                        }
                        ExecutorService executorService = (ExecutorService) autoCloseable;
                        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                            return;
                        }
                        executorService.shutdown();
                        boolean z2 = false;
                        while (!zIsTerminated) {
                            try {
                                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                            } catch (InterruptedException unused) {
                                if (!z2) {
                                    executorService.shutdownNow();
                                    z2 = true;
                                }
                            }
                        }
                        if (z2) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void abort() throws Exception {
        terminate(false);
    }

    @Override // androidx.camera.camera2.pipe.FrameCapture
    public void addListener(Frame.Listener listener) {
        listener.getClass();
        synchronized (this.lock) {
            if (!this.closed && !this.aborted) {
                if (!this.deferred.P()) {
                    List<Frame.Listener> list = this.pendingListeners;
                    if (list != null) {
                        list.add(listener);
                    }
                    return;
                } else {
                    FrameCapture frameCaptureM = this.deferred.m();
                    j59 j59Var = j59.a;
                    FrameCapture frameCapture = frameCaptureM;
                    if (frameCapture != null) {
                        frameCapture.addListener(listener);
                        return;
                    }
                    return;
                }
            }
            listener.onFrameComplete();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.FrameCapture
    public Object awaitFrame(e02<? super Frame> e02Var) {
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
        Object objZ = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objZ);
            xp1<FrameCapture> xp1Var = this.deferred;
            anonymousClass1.label = 1;
            objZ = xp1Var.Z(anonymousClass1);
            if (objZ != a32Var) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                r57.b(objZ);
                return objZ;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(objZ);
        FrameCapture frameCapture = (FrameCapture) objZ;
        if (frameCapture == null) {
            return null;
        }
        anonymousClass1.label = 2;
        Object objAwaitFrame = frameCapture.awaitFrame(anonymousClass1);
        return objAwaitFrame == a32Var ? a32Var : objAwaitFrame;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        terminate(true);
    }

    @Override // androidx.camera.camera2.pipe.FrameCapture
    public Frame getFrame() {
        FrameCapture frameCaptureM;
        if (!this.deferred.P() || (frameCaptureM = this.deferred.m()) == null) {
            return null;
        }
        return frameCaptureM.getFrame();
    }

    @Override // androidx.camera.camera2.pipe.FrameCapture
    public Request getRequest() {
        return this.request;
    }

    @Override // androidx.camera.camera2.pipe.FrameCapture
    /* JADX INFO: renamed from: getStatus-U7r42EA */
    public int mo450getStatusU7r42EA() {
        int iM523getUNAVAILABLEU7r42EA;
        FrameCapture frameCaptureM;
        synchronized (this.lock) {
            if (this.deferred.P() && (frameCaptureM = this.deferred.m()) != null) {
                return frameCaptureM.mo450getStatusU7r42EA();
            }
            if (this.aborted) {
                iM523getUNAVAILABLEU7r42EA = OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA();
            } else {
                iM523getUNAVAILABLEU7r42EA = this.closed ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : OutputStatus.Companion.m522getPENDINGU7r42EA();
            }
            return iM523getUNAVAILABLEU7r42EA;
        }
    }

    public final void setFrameCapture(FrameCapture frameCapture) {
        frameCapture.getClass();
        synchronized (this.lock) {
            if (!this.closed && !this.aborted) {
                if (!this.deferred.f(frameCapture)) {
                    bj.e(frameCapture);
                    return;
                }
                List<Frame.Listener> list = this.pendingListeners;
                this.pendingListeners = null;
                j59 j59Var = j59.a;
                if (list != null) {
                    Iterator<Frame.Listener> it = list.iterator();
                    while (it.hasNext()) {
                        frameCapture.addListener(it.next());
                    }
                    return;
                }
                return;
            }
            bj.e(frameCapture);
        }
    }
}
