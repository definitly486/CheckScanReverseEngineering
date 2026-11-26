package androidx.camera.camera2.pipe.framegraph;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.Frame;
import androidx.camera.camera2.pipe.FrameBuffer;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.bf3;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.fg;
import defpackage.fr;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.mi2;
import defpackage.nl3;
import defpackage.px;
import defpackage.r07;
import defpackage.vg5;
import defpackage.xg5;
import defpackage.y67;
import defpackage.y68;
import defpackage.ys7;
import defpackage.z68;
import defpackage.zs7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class FrameBufferImpl implements FrameBuffer, FrameDistributor.FrameStartedListener {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final int FRAME_FLOW_EXTRA_BUFFER_CAPACITY = 4;
    private final vg5<FrameReference> _frameFlow;
    private final xg5<Integer> _size;
    private int capacity;
    private boolean closed;
    private final ys7<FrameReference> frameFlow;
    private final FrameGraphBuffers frameGraphBuffers;
    private fr<BufferEntry> frameQueue;
    private final Object lock;
    private final Map<Object, Object> parameters;
    private final y68<Integer> size;
    private final Set<StreamId> streams;

    public FrameBufferImpl(FrameGraphBuffers frameGraphBuffers, Set<StreamId> set, Map<Object, ? extends Object> map, int i) {
        frameGraphBuffers.getClass();
        set.getClass();
        map.getClass();
        this.frameGraphBuffers = frameGraphBuffers;
        this.streams = set;
        this.parameters = map;
        this.lock = new Object();
        this.frameQueue = new fr<>(i);
        zs7 zs7VarA = bt7.a(0, 4, cu0.DROP_OLDEST);
        this._frameFlow = zs7VarA;
        this.frameFlow = bf3.a(zs7VarA);
        if (i < 0) {
            fg.c("FrameBuffer capacity must be greater than or equal to 0");
            throw null;
        }
        z68 z68VarA = px.a(0);
        this._size = z68VarA;
        this.size = bf3.b(z68VarA);
        this.capacity = i;
    }

    private final Frame removeAndAcquire(Iterator<? extends BufferEntry> it, nl3<? super FrameReference, Boolean> nl3Var) {
        while (it.hasNext()) {
            BufferEntry next = it.next();
            if (nl3Var.invoke(next.getFrameReference()).booleanValue()) {
                it.remove();
                this._size.setValue(Integer.valueOf(this.frameQueue.size()));
                BufferEntry.WithFrame withFrame = next instanceof BufferEntry.WithFrame ? (BufferEntry.WithFrame) next : null;
                if (withFrame == null) {
                    break;
                }
                return withFrame.getFrame();
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [T, java.util.ArrayList, java.util.Collection] */
    @Override // androidx.camera.camera2.pipe.FrameBuffer, java.lang.AutoCloseable
    public void close() throws Exception {
        boolean zIsTerminated;
        r07 r07Var = new r07();
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                fr<BufferEntry> frVar = this.frameQueue;
                ?? arrayList = new ArrayList();
                for (BufferEntry bufferEntry : frVar) {
                    BufferEntry.WithFrame withFrame = bufferEntry instanceof BufferEntry.WithFrame ? (BufferEntry.WithFrame) bufferEntry : null;
                    Frame frame = withFrame != null ? withFrame.getFrame() : null;
                    if (frame != null) {
                        arrayList.add(frame);
                    }
                }
                r07Var.b = arrayList;
                this.frameQueue.clear();
                this._size.setValue(0);
                j59 j59Var = j59.a;
                for (AutoCloseable autoCloseable : (List) r07Var.b) {
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
                this.frameGraphBuffers.detach$camera_camera2_pipe(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public int getCapacity() {
        return this.capacity;
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public ys7<FrameReference> getFrameFlow() {
        return this.frameFlow;
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public Map<Object, Object> getParameters() {
        return this.parameters;
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public y68<Integer> getSize() {
        return this.size;
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public Set<StreamId> getStreams() {
        return this.streams;
    }

    @Override // androidx.camera.camera2.pipe.internal.FrameDistributor.FrameStartedListener
    public void onFrameStarted(FrameReference frameReference) throws Exception {
        boolean zIsTerminated;
        frameReference.getClass();
        if (getCapacity() == 0) {
            synchronized (this.lock) {
                try {
                    if (!this.closed) {
                        this._frameFlow.e(frameReference);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        AutoCloseable frame = null;
        Frame frameTryAcquire$default = FrameReference.tryAcquire$default(frameReference, null, 1, null);
        BufferEntry withFrame = frameTryAcquire$default != null ? new BufferEntry.WithFrame(frameTryAcquire$default) : new BufferEntry.WithoutFrame(frameReference);
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    frame = withFrame instanceof BufferEntry.WithFrame ? ((BufferEntry.WithFrame) withFrame).getFrame() : null;
                    j59 j59Var2 = j59.a;
                } else {
                    if (this.frameQueue.size() == getCapacity()) {
                        BufferEntry bufferEntryRemoveFirst = this.frameQueue.removeFirst();
                        if (bufferEntryRemoveFirst instanceof BufferEntry.WithFrame) {
                            frame = ((BufferEntry.WithFrame) bufferEntryRemoveFirst).getFrame();
                        }
                    }
                    this.frameQueue.addLast(withFrame);
                    this._size.setValue(Integer.valueOf(this.frameQueue.size()));
                    this._frameFlow.e(withFrame.getFrameReference());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (frame != null) {
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
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public List<FrameReference> peekAllReferences() {
        synchronized (this.lock) {
            if (this.closed) {
                return kx2.b;
            }
            fr<BufferEntry> frVar = this.frameQueue;
            ArrayList arrayList = new ArrayList(kn1.q(frVar, 10));
            Iterator<BufferEntry> it = frVar.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getFrameReference());
            }
            return arrayList;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public FrameReference peekFirstReference() {
        synchronized (this.lock) {
            if (this.closed) {
                return null;
            }
            BufferEntry bufferEntryD = this.frameQueue.d();
            return bufferEntryD != null ? bufferEntryD.getFrameReference() : null;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public FrameReference peekLastReference() {
        synchronized (this.lock) {
            if (this.closed) {
                return null;
            }
            BufferEntry bufferEntryJ = this.frameQueue.j();
            return bufferEntryJ != null ? bufferEntryJ.getFrameReference() : null;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public List<Frame> removeAllFrameReferencesAndAcquire(nl3<? super FrameReference, Boolean> nl3Var) {
        nl3Var.getClass();
        synchronized (this.lock) {
            if (this.closed) {
                return kx2.b;
            }
            Iterator<BufferEntry> it = this.frameQueue.iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                BufferEntry next = it.next();
                if (nl3Var.invoke(next.getFrameReference()).booleanValue()) {
                    it.remove();
                    BufferEntry.WithFrame withFrame = next instanceof BufferEntry.WithFrame ? (BufferEntry.WithFrame) next : null;
                    if (withFrame != null) {
                        arrayList.add(withFrame.getFrame());
                    }
                }
            }
            this._size.setValue(Integer.valueOf(this.frameQueue.size()));
            return arrayList;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public List<FrameReference> removeAllReferences() {
        synchronized (this.lock) {
            if (this.closed) {
                return kx2.b;
            }
            fr<BufferEntry> frVar = this.frameQueue;
            ArrayList arrayList = new ArrayList(kn1.q(frVar, 10));
            Iterator<BufferEntry> it = frVar.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getFrameReference());
            }
            this.frameQueue.clear();
            this._size.setValue(0);
            return arrayList;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public Frame removeFirstFrameReferenceAndAcquire(nl3<? super FrameReference, Boolean> nl3Var) {
        nl3Var.getClass();
        return removeAndAcquire(this.frameQueue.iterator(), nl3Var);
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public FrameReference removeFirstReference() {
        synchronized (this.lock) {
            FrameReference frameReference = null;
            if (this.closed) {
                return null;
            }
            BufferEntry bufferEntryP = this.frameQueue.p();
            if (bufferEntryP != null) {
                this._size.setValue(Integer.valueOf(this.frameQueue.size()));
                frameReference = bufferEntryP.getFrameReference();
            }
            return frameReference;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public Frame removeLastFrameReferenceAndAcquire(nl3<? super FrameReference, Boolean> nl3Var) {
        nl3Var.getClass();
        fr<BufferEntry> frVar = this.frameQueue;
        frVar.getClass();
        return removeAndAcquire(new y67(frVar).iterator(), nl3Var);
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public FrameReference removeLastReference() {
        synchronized (this.lock) {
            FrameReference frameReference = null;
            if (this.closed) {
                return null;
            }
            fr<BufferEntry> frVar = this.frameQueue;
            BufferEntry bufferEntryRemoveLast = frVar.isEmpty() ? null : frVar.removeLast();
            if (bufferEntryRemoveLast != null) {
                this._size.setValue(Integer.valueOf(this.frameQueue.size()));
                frameReference = bufferEntryRemoveLast.getFrameReference();
            }
            return frameReference;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameBuffer
    public void setCapacity(int i) throws Exception {
        boolean zIsTerminated;
        if (i < 0) {
            fg.c("Capacity cannot be negative");
            return;
        }
        ArrayList<AutoCloseable> arrayList = new ArrayList();
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                if (i == this.capacity) {
                    return;
                }
                this.capacity = i;
                int size = this.frameQueue.size();
                if (i < size) {
                    int i2 = size - i;
                    for (int i3 = 0; i3 < i2; i3++) {
                        BufferEntry bufferEntryRemoveFirst = this.frameQueue.removeFirst();
                        BufferEntry.WithFrame withFrame = bufferEntryRemoveFirst instanceof BufferEntry.WithFrame ? (BufferEntry.WithFrame) bufferEntryRemoveFirst : null;
                        if (withFrame != null) {
                            arrayList.add(withFrame.getFrame());
                        }
                    }
                    this.frameQueue = new fr<>(this.frameQueue);
                }
                this._size.setValue(Integer.valueOf(this.frameQueue.size()));
                j59 j59Var = j59.a;
                for (AutoCloseable autoCloseable : arrayList) {
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
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public static abstract class BufferEntry {
        private final FrameReference frameReference;

        public static final class WithFrame extends BufferEntry {
            private final Frame frame;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WithFrame(Frame frame) {
                super(frame, null);
                frame.getClass();
                this.frame = frame;
            }

            public final Frame getFrame() {
                return this.frame;
            }
        }

        public static final class WithoutFrame extends BufferEntry {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WithoutFrame(FrameReference frameReference) {
                super(frameReference, null);
                frameReference.getClass();
            }
        }

        private BufferEntry(FrameReference frameReference) {
            this.frameReference = frameReference;
        }

        public final FrameReference getFrameReference() {
            return this.frameReference;
        }

        public /* synthetic */ BufferEntry(FrameReference frameReference, jh2 jh2Var) {
            this(frameReference);
        }
    }
}
