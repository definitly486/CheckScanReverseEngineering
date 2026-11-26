package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraId;
import defpackage.j59;
import defpackage.jh2;
import defpackage.y68;
import defpackage.ys7;

/* JADX INFO: loaded from: classes.dex */
public interface CameraStatusMonitor extends AutoCloseable {
    y68<CameraStatus> getCameraAvailability();

    ys7<j59> getCameraPriorities();

    public static abstract class CameraStatus {

        public static final class CameraPrioritiesChanged extends CameraStatus {
            public static final CameraPrioritiesChanged INSTANCE = new CameraPrioritiesChanged();

            private CameraPrioritiesChanged() {
            }

            public String toString() {
                return "CameraPrioritiesChanged";
            }
        }

        public static final class Unknown extends CameraStatus {
            public static final Unknown INSTANCE = new Unknown();

            private Unknown() {
            }

            public String toString() {
                return "UnknownCameraStatus";
            }
        }

        public static final class CameraAvailable extends CameraStatus {
            private final String cameraId;

            private CameraAvailable(String str) {
                str.getClass();
                this.cameraId = str;
            }

            /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
            public final String m930getCameraIdDz_R5H8() {
                return this.cameraId;
            }

            public String toString() {
                return "CameraAvailable(camera=" + ((Object) CameraId.m357toStringimpl(this.cameraId)) + ')';
            }

            public /* synthetic */ CameraAvailable(String str, jh2 jh2Var) {
                this(str);
            }
        }

        public static final class CameraUnavailable extends CameraStatus {
            private final String cameraId;

            private CameraUnavailable(String str) {
                str.getClass();
                this.cameraId = str;
            }

            /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
            public final String m931getCameraIdDz_R5H8() {
                return this.cameraId;
            }

            public String toString() {
                return "CameraUnavailable(camera=" + ((Object) CameraId.m357toStringimpl(this.cameraId)) + ')';
            }

            public /* synthetic */ CameraUnavailable(String str, jh2 jh2Var) {
                this(str);
            }
        }
    }
}
