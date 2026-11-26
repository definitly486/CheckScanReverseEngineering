package androidx.camera.camera2.adapter;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class GraphStateToCameraStateAdapter implements GraphStateListener {
    public CameraGraph cameraGraph;
    private final CameraStateAdapter cameraStateAdapter;

    public GraphStateToCameraStateAdapter(CameraStateAdapter cameraStateAdapter) {
        cameraStateAdapter.getClass();
        this.cameraStateAdapter = cameraStateAdapter;
    }

    public final CameraGraph getCameraGraph() {
        CameraGraph cameraGraph = this.cameraGraph;
        if (cameraGraph != null) {
            return cameraGraph;
        }
        aa4.j("cameraGraph");
        throw null;
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        graphStateError.getClass();
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), graphStateError);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStarted() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStarted.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStarting() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStarting.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStopped() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStopped.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStopping() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStopping.INSTANCE);
    }

    public final void setCameraGraph(CameraGraph cameraGraph) {
        cameraGraph.getClass();
        this.cameraGraph = cameraGraph;
    }
}
