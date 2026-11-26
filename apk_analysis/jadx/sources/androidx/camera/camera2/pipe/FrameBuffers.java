package androidx.camera.camera2.pipe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FrameBuffers {
    public static final FrameBuffers INSTANCE = new FrameBuffers();

    private FrameBuffers() {
    }

    public static final List<Frame> tryPeekAll(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        List<FrameReference> listPeekAllReferences = frameBuffer.peekAllReferences();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listPeekAllReferences.iterator();
        while (it.hasNext()) {
            Frame frameTryAcquire$default = FrameReference.tryAcquire$default((FrameReference) it.next(), null, 1, null);
            if (frameTryAcquire$default != null) {
                arrayList.add(frameTryAcquire$default);
            }
        }
        return arrayList;
    }

    public static final Frame tryPeekFirst(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        FrameReference frameReferencePeekFirstReference = frameBuffer.peekFirstReference();
        if (frameReferencePeekFirstReference != null) {
            return FrameReference.tryAcquire$default(frameReferencePeekFirstReference, null, 1, null);
        }
        return null;
    }

    public static final Frame tryPeekLast(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        FrameReference frameReferencePeekLastReference = frameBuffer.peekLastReference();
        if (frameReferencePeekLastReference != null) {
            return FrameReference.tryAcquire$default(frameReferencePeekLastReference, null, 1, null);
        }
        return null;
    }

    public static final List<Frame> tryRemoveAll(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        List<FrameReference> listRemoveAllReferences = frameBuffer.removeAllReferences();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listRemoveAllReferences.iterator();
        while (it.hasNext()) {
            Frame frameTryAcquire$default = FrameReference.tryAcquire$default((FrameReference) it.next(), null, 1, null);
            if (frameTryAcquire$default != null) {
                arrayList.add(frameTryAcquire$default);
            }
        }
        return arrayList;
    }

    public static final Frame tryRemoveFirst(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        FrameReference frameReferenceRemoveFirstReference = frameBuffer.removeFirstReference();
        if (frameReferenceRemoveFirstReference != null) {
            return FrameReference.tryAcquire$default(frameReferenceRemoveFirstReference, null, 1, null);
        }
        return null;
    }

    public static final Frame tryRemoveLast(FrameBuffer frameBuffer) {
        frameBuffer.getClass();
        FrameReference frameReferenceRemoveLastReference = frameBuffer.removeLastReference();
        if (frameReferenceRemoveLastReference != null) {
            return FrameReference.tryAcquire$default(frameReferenceRemoveLastReference, null, 1, null);
        }
        return null;
    }
}
