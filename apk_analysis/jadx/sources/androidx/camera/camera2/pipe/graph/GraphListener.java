package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.GraphState;

/* JADX INFO: loaded from: classes.dex */
public interface GraphListener {

    public static final class DefaultImpls {
        @Deprecated
        public static void onGraphStarting(GraphListener graphListener) {
            GraphListener.super.onGraphStarting();
        }

        @Deprecated
        public static void onGraphStopping(GraphListener graphListener) {
            GraphListener.super.onGraphStopping();
        }
    }

    void onGraphError(GraphState.GraphStateError graphStateError);

    void onGraphModified(GraphRequestProcessor graphRequestProcessor);

    void onGraphStarted(GraphRequestProcessor graphRequestProcessor);

    default void onGraphStarting() {
    }

    void onGraphStopped(GraphRequestProcessor graphRequestProcessor);

    default void onGraphStopping() {
    }
}
