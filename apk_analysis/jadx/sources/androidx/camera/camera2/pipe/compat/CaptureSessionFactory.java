package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import defpackage.aa4;
import defpackage.g2;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureSessionFactory {

    public interface Result {

        public static final class Failed implements Result {
            public static final Failed INSTANCE = new Failed();

            private Failed() {
            }
        }

        public static final class Success implements Result {
            private final Map<StreamId, OutputConfigurationWrapper> deferred;
            private final Map<OutputId, Surface> outputSurfaceMap;

            /* JADX WARN: Multi-variable type inference failed */
            public Success(Map<StreamId, ? extends OutputConfigurationWrapper> map, Map<OutputId, ? extends Surface> map2) {
                map.getClass();
                map2.getClass();
                this.deferred = map;
                this.outputSurfaceMap = map2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Success copy$default(Success success, Map map, Map map2, int i, Object obj) {
                if ((i & 1) != 0) {
                    map = success.deferred;
                }
                if ((i & 2) != 0) {
                    map2 = success.outputSurfaceMap;
                }
                return success.copy(map, map2);
            }

            public final Map<StreamId, OutputConfigurationWrapper> component1() {
                return this.deferred;
            }

            public final Map<OutputId, Surface> component2() {
                return this.outputSurfaceMap;
            }

            public final Success copy(Map<StreamId, ? extends OutputConfigurationWrapper> map, Map<OutputId, ? extends Surface> map2) {
                map.getClass();
                map2.getClass();
                return new Success(map, map2);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return aa4.e(this.deferred, success.deferred) && aa4.e(this.outputSurfaceMap, success.outputSurfaceMap);
            }

            public final Map<StreamId, OutputConfigurationWrapper> getDeferred() {
                return this.deferred;
            }

            public final Map<OutputId, Surface> getOutputSurfaceMap() {
                return this.outputSurfaceMap;
            }

            public int hashCode() {
                return this.outputSurfaceMap.hashCode() + (this.deferred.hashCode() * 31);
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Success(deferred=");
                sb.append(this.deferred);
                sb.append(", outputSurfaceMap=");
                return g2.c(sb, this.outputSurfaceMap, ')');
            }
        }
    }

    Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState);
}
