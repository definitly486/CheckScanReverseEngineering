package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.ah;
import defpackage.fg;
import defpackage.jy8;
import defpackage.kt;
import defpackage.mt;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureLimiter implements Request.Listener, GraphLoop.Listener {
    private GraphLoop _graphLoop;
    private final mt frameCount;
    private final long requestsUntilActive;

    public CaptureLimiter(long j) {
        this.requestsUntilActive = j;
        if (j > 0) {
            this.frameCount = kt.c();
        } else {
            fg.c("Failed requirement.");
            throw null;
        }
    }

    public final GraphLoop getGraphLoop() {
        GraphLoop graphLoop = this._graphLoop;
        graphLoop.getClass();
        return graphLoop;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        long j2;
        boolean zCompareAndSet;
        requestMetadata.getClass();
        frameInfo.getClass();
        mt mtVar = this.frameCount;
        do {
            long j3 = mtVar.a;
            j2 = j3 != -1 ? 1 + j3 : -1L;
            zCompareAndSet = mt.b.compareAndSet(mtVar, j3, j2);
            if (zCompareAndSet) {
                jy8.a aVar = jy8.a.a;
            }
        } while (!zCompareAndSet);
        if (j2 == this.requestsUntilActive) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Capture processing is now enabled for " + this._graphLoop + " after " + j2 + " frames.");
            }
            getGraphLoop().setCaptureProcessingEnabled(true);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        this.frameCount.a = -1L;
        jy8.a aVar = jy8.a.a;
        getGraphLoop().setCaptureProcessingEnabled(false);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        boolean zCompareAndSet;
        mt mtVar = this.frameCount;
        do {
            long j = mtVar.a;
            zCompareAndSet = mt.b.compareAndSet(mtVar, j, j != -1 ? 0L : -1L);
            if (zCompareAndSet) {
                jy8.a aVar = jy8.a.a;
            }
        } while (!zCompareAndSet);
        getGraphLoop().setCaptureProcessingEnabled(false);
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Capture processing has been disabled for " + getGraphLoop() + " until " + this.requestsUntilActive + " frames have been completed.");
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
    }

    public final void setGraphLoop(GraphLoop graphLoop) {
        graphLoop.getClass();
        if (this._graphLoop != null) {
            ah.f("GraphLoop has already been set!");
            return;
        }
        this._graphLoop = graphLoop;
        graphLoop.setCaptureProcessingEnabled(false);
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Capture processing has been disabled for " + graphLoop + " until " + this.requestsUntilActive + " frames have been completed.");
        }
    }
}
