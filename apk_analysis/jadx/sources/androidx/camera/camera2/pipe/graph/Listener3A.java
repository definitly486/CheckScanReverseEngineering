package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class Listener3A implements Request.Listener, GraphLoop.Listener {
    private final CopyOnWriteArrayList<Result3AStateListener> listeners = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: updateListeners-voP-kFw, reason: not valid java name */
    private final void m893updateListenersvoPkFw(long j, FrameMetadata frameMetadata) {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            Result3AStateListener next = it.next();
            if (next.mo902updatevoPkFw(j, frameMetadata)) {
                this.listeners.remove(next);
            }
        }
    }

    public final void addListener(Result3AStateListener result3AStateListener) {
        result3AStateListener.getClass();
        this.listeners.add(result3AStateListener);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo41onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        requestMetadata.getClass();
        frameMetadata.getClass();
        m893updateListenersvoPkFw(requestMetadata.mo62getRequestNumbermy6kx4g(), frameMetadata);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().mo901onRequestSequenceCreatedDThHKJ0(requestMetadata.mo62getRequestNumbermy6kx4g());
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        m893updateListenersvoPkFw(requestMetadata.mo62getRequestNumbermy6kx4g(), frameInfo.getMetadata());
    }

    public final void removeListener(Result3AStateListener result3AStateListener) {
        result3AStateListener.getClass();
        this.listeners.remove(result3AStateListener);
    }
}
