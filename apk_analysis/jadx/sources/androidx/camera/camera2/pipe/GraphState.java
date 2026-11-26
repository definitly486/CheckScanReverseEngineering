package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public abstract class GraphState {
    private final String name;

    public static final class GraphStateStarted extends GraphState {
        public static final GraphStateStarted INSTANCE = new GraphStateStarted();

        private GraphStateStarted() {
            super("GRAPH_STARTED");
        }
    }

    public static final class GraphStateStarting extends GraphState {
        public static final GraphStateStarting INSTANCE = new GraphStateStarting();

        private GraphStateStarting() {
            super("GRAPH_STARTING");
        }
    }

    public static final class GraphStateStopped extends GraphState {
        public static final GraphStateStopped INSTANCE = new GraphStateStopped();

        private GraphStateStopped() {
            super("GRAPH_STOPPED");
        }
    }

    public static final class GraphStateStopping extends GraphState {
        public static final GraphStateStopping INSTANCE = new GraphStateStopping();

        private GraphStateStopping() {
            super("GRAPH_STOPPING");
        }
    }

    public GraphState(String str) {
        str.getClass();
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    public static final class GraphStateError extends GraphState {
        private final int cameraError;
        private final boolean willAttemptRetry;

        private GraphStateError(int i, boolean z) {
            super("GRAPH_ERROR");
            this.cameraError = i;
            this.willAttemptRetry = z;
        }

        /* JADX INFO: renamed from: getCameraError-v7Vf74A, reason: not valid java name */
        public final int m478getCameraErrorv7Vf74A() {
            return this.cameraError;
        }

        public final boolean getWillAttemptRetry() {
            return this.willAttemptRetry;
        }

        @Override // androidx.camera.camera2.pipe.GraphState
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append("(cameraError=");
            sb.append((Object) CameraError.m282toStringimpl(this.cameraError));
            sb.append(", willAttemptRetry=");
            return sg.d(sb, this.willAttemptRetry, ')');
        }

        public /* synthetic */ GraphStateError(int i, boolean z, jh2 jh2Var) {
            this(i, z);
        }
    }
}
