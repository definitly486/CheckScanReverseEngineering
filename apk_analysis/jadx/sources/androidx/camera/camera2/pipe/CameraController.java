package androidx.camera.camera2.pipe;

import android.view.Surface;
import defpackage.e02;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CameraController {

    public static abstract class ControllerState {

        public static final class CLOSED extends ControllerState {
            public static final CLOSED INSTANCE = new CLOSED();

            private CLOSED() {
            }
        }

        public static final class CLOSING extends ControllerState {
            public static final CLOSING INSTANCE = new CLOSING();

            private CLOSING() {
            }
        }

        public static final class DISCONNECTED extends ControllerState {
            public static final DISCONNECTED INSTANCE = new DISCONNECTED();

            private DISCONNECTED() {
            }
        }

        public static final class ERROR extends ControllerState {
            public static final ERROR INSTANCE = new ERROR();

            private ERROR() {
            }
        }

        public static final class STARTED extends ControllerState {
            public static final STARTED INSTANCE = new STARTED();

            private STARTED() {
            }
        }

        public static final class STOPPED extends ControllerState {
            public static final STOPPED INSTANCE = new STOPPED();

            private STOPPED() {
            }
        }

        public static final class STOPPING extends ControllerState {
            public static final STOPPING INSTANCE = new STOPPING();

            private STOPPING() {
            }
        }
    }

    static Object awaitClosed$suspendImpl(CameraController cameraController, e02<? super Boolean> e02Var) {
        return Boolean.TRUE;
    }

    default Object awaitClosed(e02<? super Boolean> e02Var) {
        return awaitClosed$suspendImpl(this, e02Var);
    }

    void close();

    CameraGraphId getCameraGraphId();

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    String mo228getCameraIdDz_R5H8();

    /* JADX INFO: renamed from: getOutputLatency-n5Pu2dI, reason: not valid java name */
    StreamGraph.OutputLatency mo229getOutputLatencyn5Pu2dI(StreamId streamId);

    boolean isForeground();

    void setForeground(boolean z);

    void start();

    void stop();

    void updateSurfaceMap(Map<StreamId, ? extends Surface> map);
}
