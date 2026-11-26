package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.GraphRequestProcessor;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpGraphListener implements GraphListener {
    public static final NoOpGraphListener INSTANCE = new NoOpGraphListener();

    private NoOpGraphListener() {
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        graphStateError.getClass();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphModified(GraphRequestProcessor graphRequestProcessor) {
        graphRequestProcessor.getClass();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarted(GraphRequestProcessor graphRequestProcessor) {
        graphRequestProcessor.getClass();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopped(GraphRequestProcessor graphRequestProcessor) {
    }
}
