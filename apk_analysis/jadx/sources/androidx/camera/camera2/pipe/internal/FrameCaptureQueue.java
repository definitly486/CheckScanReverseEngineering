package androidx.camera.camera2.pipe.internal;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.Frame;
import androidx.camera.camera2.pipe.FrameCapture;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.e02;
import defpackage.fr;
import defpackage.ht;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kt;
import defpackage.mi2;
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
@CameraGraphScope
public final class FrameCaptureQueue implements AutoCloseable {
    private boolean closed;
    private final Object lock = new Object();
    private final fr<FrameCaptureImpl> queue = new fr<>();

    public final class FrameCaptureImpl implements FrameCapture {
        private final ht closed;
        private List<Frame.Listener> frameListeners;
        private final Request request;
        private final xp1<OutputResult<Frame>> result;
        final /* synthetic */ FrameCaptureQueue this$0;

        public FrameCaptureImpl(FrameCaptureQueue frameCaptureQueue, Request request) {
            request.getClass();
            this.this$0 = frameCaptureQueue;
            this.request = request;
            this.closed = kt.a(false);
            this.result = new yp1();
            this.frameListeners = new ArrayList();
        }

        @Override // androidx.camera.camera2.pipe.FrameCapture
        public void addListener(Frame.Listener listener) {
            boolean z;
            listener.getClass();
            synchronized (this) {
                List<Frame.Listener> list = this.frameListeners;
                z = false;
                if (list != null && list.add(listener)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            OutputResult.Companion companion = OutputResult.Companion;
            xp1<OutputResult<Frame>> xp1Var = this.result;
            Object obj = null;
            if (xp1Var.P() && !xp1Var.isCancelled()) {
                Object objM974unboximpl = xp1Var.m().m974unboximpl();
                if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    obj = objM974unboximpl;
                }
            }
            Frame frame = (Frame) obj;
            if (frame != null) {
                frame.addListener(listener);
            } else {
                listener.onFrameComplete();
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.camera.camera2.pipe.FrameCapture
        public Object awaitFrame(e02<? super Frame> e02Var) {
            FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1 frameCaptureQueue$FrameCaptureImpl$awaitFrame$1;
            if (e02Var instanceof FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1) {
                frameCaptureQueue$FrameCaptureImpl$awaitFrame$1 = (FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1) e02Var;
                int i = frameCaptureQueue$FrameCaptureImpl$awaitFrame$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    frameCaptureQueue$FrameCaptureImpl$awaitFrame$1.label = i - Integer.MIN_VALUE;
                } else {
                    frameCaptureQueue$FrameCaptureImpl$awaitFrame$1 = new FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1(this, e02Var);
                }
            } else {
                frameCaptureQueue$FrameCaptureImpl$awaitFrame$1 = new FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1(this, e02Var);
            }
            Object objZ = frameCaptureQueue$FrameCaptureImpl$awaitFrame$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = frameCaptureQueue$FrameCaptureImpl$awaitFrame$1.label;
            if (i2 == 0) {
                r57.b(objZ);
                if (this.closed.b()) {
                    return null;
                }
                xp1<OutputResult<Frame>> xp1Var = this.result;
                frameCaptureQueue$FrameCaptureImpl$awaitFrame$1.label = 1;
                objZ = xp1Var.Z(frameCaptureQueue$FrameCaptureImpl$awaitFrame$1);
                if (objZ == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objZ);
            }
            Object objM974unboximpl = ((OutputResult) objZ).m974unboximpl();
            if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                objM974unboximpl = null;
            }
            Frame frame = (Frame) objM974unboximpl;
            if (frame != null) {
                return FrameReference.tryAcquire$default(frame, null, 1, null);
            }
            return null;
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            boolean zIsTerminated;
            if (this.closed.a()) {
                m932completeWithFailuretXNfJfc(OutputStatus.Companion.m523getUNAVAILABLEU7r42EA());
                OutputResult.Companion companion = OutputResult.Companion;
                xp1<OutputResult<Frame>> xp1Var = this.result;
                Object obj = null;
                if (xp1Var.P() && !xp1Var.isCancelled()) {
                    Object objM974unboximpl = xp1Var.m().m974unboximpl();
                    if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                        obj = objM974unboximpl;
                    }
                }
                AutoCloseable autoCloseable = (Frame) obj;
                if (autoCloseable != null) {
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
                Object obj2 = this.this$0.lock;
                FrameCaptureQueue frameCaptureQueue = this.this$0;
                synchronized (obj2) {
                    frameCaptureQueue.queue.remove(this);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void completeWith(Frame frame) {
            List<Frame.Listener> list;
            boolean zIsTerminated;
            frame.getClass();
            OutputResult.Companion companion = OutputResult.Companion;
            int i = 0;
            if (this.result.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(frame)))) {
                synchronized (this) {
                    list = this.frameListeners;
                    this.frameListeners = null;
                    j59 j59Var = j59.a;
                }
                if (list != null) {
                    int size = list.size();
                    while (i < size) {
                        frame.addListener(list.get(i));
                        i++;
                    }
                    return;
                }
                return;
            }
            if (frame instanceof AutoCloseable) {
                frame.close();
                return;
            }
            if (!(frame instanceof ExecutorService)) {
                if (frame instanceof TypedArray) {
                    ((TypedArray) frame).recycle();
                    return;
                }
                if (frame instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) frame).release();
                    return;
                } else if (frame instanceof MediaDrm) {
                    ((MediaDrm) frame).release();
                    return;
                } else {
                    mi2.b();
                    return;
                }
            }
            ExecutorService executorService = (ExecutorService) frame;
            if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                return;
            }
            executorService.shutdown();
            while (!zIsTerminated) {
                try {
                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (i == 0) {
                        executorService.shutdownNow();
                        i = 1;
                    }
                }
            }
            if (i != 0) {
                Thread.currentThread().interrupt();
            }
        }

        /* JADX INFO: renamed from: completeWithFailure-tXNfJfc, reason: not valid java name */
        public final void m932completeWithFailuretXNfJfc(int i) {
            List<Frame.Listener> list;
            OutputResult.Companion companion = OutputResult.Companion;
            if (this.result.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(OutputStatus.m510boximpl(i))))) {
                synchronized (this) {
                    list = this.frameListeners;
                    this.frameListeners = null;
                    j59 j59Var = j59.a;
                }
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        list.get(i2).onFrameComplete();
                    }
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:12:0x002b  */
        @Override // androidx.camera.camera2.pipe.FrameCapture
        public Frame getFrame() {
            Object objM974unboximpl;
            if (this.closed.b()) {
                return null;
            }
            OutputResult.Companion companion = OutputResult.Companion;
            xp1<OutputResult<Frame>> xp1Var = this.result;
            if (!xp1Var.P() || xp1Var.isCancelled()) {
                objM974unboximpl = null;
            } else {
                objM974unboximpl = xp1Var.m().m974unboximpl();
                if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    objM974unboximpl = null;
                }
            }
            Frame frame = (Frame) objM974unboximpl;
            if (frame != null) {
                return FrameReference.tryAcquire$default(frame, null, 1, null);
            }
            return null;
        }

        @Override // androidx.camera.camera2.pipe.FrameCapture
        public Request getRequest() {
            return this.request;
        }

        @Override // androidx.camera.camera2.pipe.FrameCapture
        /* JADX INFO: renamed from: getStatus-U7r42EA */
        public int mo450getStatusU7r42EA() {
            if (this.closed.b()) {
                return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
            }
            OutputResult.Companion companion = OutputResult.Companion;
            xp1<OutputResult<Frame>> xp1Var = this.result;
            if (!xp1Var.P()) {
                return OutputStatus.Companion.m522getPENDINGU7r42EA();
            }
            if (xp1Var.isCancelled()) {
                return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
            }
            Object objM974unboximpl = xp1Var.m().m974unboximpl();
            if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                return OutputStatus.Companion.m517getAVAILABLEU7r42EA();
            }
            return objM974unboximpl == null ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : ((OutputStatus) objM974unboximpl).m516unboximpl();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            j59 j59Var = j59.a;
            Iterator<FrameCaptureImpl> it = this.queue.iterator();
            while (it.hasNext()) {
                it.next().m932completeWithFailuretXNfJfc(OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA());
            }
            this.queue.clear();
        }
    }

    public final List<FrameCapture> enqueue(List<Request> list) {
        ArrayList arrayList;
        list.getClass();
        synchronized (this.lock) {
            try {
                List<Request> list2 = list;
                arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new FrameCaptureImpl(this, (Request) it.next()));
                }
                if (this.closed) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((FrameCaptureImpl) it2.next()).close();
                    }
                } else {
                    this.queue.addAll(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final FrameCaptureImpl remove(Request request) {
        FrameCaptureImpl next;
        request.getClass();
        synchronized (this.lock) {
            try {
                FrameCaptureImpl frameCaptureImpl = null;
                if (this.closed) {
                    return null;
                }
                Iterator<FrameCaptureImpl> it = this.queue.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!aa4.e(next.getRequest(), request));
                FrameCaptureImpl frameCaptureImpl2 = next;
                if (frameCaptureImpl2 != null) {
                    this.queue.remove(frameCaptureImpl2);
                    frameCaptureImpl = frameCaptureImpl2;
                }
                return frameCaptureImpl;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final FrameCaptureImpl enqueue(Request request) {
        FrameCaptureImpl frameCaptureImpl;
        request.getClass();
        synchronized (this.lock) {
            try {
                frameCaptureImpl = new FrameCaptureImpl(this, request);
                if (!this.closed) {
                    this.queue.addLast(frameCaptureImpl);
                } else {
                    frameCaptureImpl.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return frameCaptureImpl;
    }
}
