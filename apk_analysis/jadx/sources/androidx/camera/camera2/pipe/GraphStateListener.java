package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes.dex */
public interface GraphStateListener {
    default void onGraphError(GraphState.GraphStateError graphStateError) {
        graphStateError.getClass();
    }

    default void onGraphStarted() {
    }

    default void onGraphStarting() {
    }

    default void onGraphStopped() {
    }

    default void onGraphStopping() {
    }
}
