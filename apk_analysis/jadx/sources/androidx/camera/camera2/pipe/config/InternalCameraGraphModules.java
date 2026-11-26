package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendFactory;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import defpackage.cg;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class InternalCameraGraphModules {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @CameraGraphScope
        public final CameraBackend provideCameraBackend(CameraBackends cameraBackends, CameraGraph.Config config, CameraContext cameraContext) {
            cameraBackends.getClass();
            config.getClass();
            cameraContext.getClass();
            CameraBackendFactory customCameraBackend = config.getCustomCameraBackend();
            if (customCameraBackend != null) {
                return customCameraBackend.create(cameraContext);
            }
            String strM311getCameraBackendIdAKmI2lo = config.m311getCameraBackendIdAKmI2lo();
            if (strM311getCameraBackendIdAKmI2lo == null) {
                return cameraBackends.getDefault();
            }
            CameraBackend cameraBackendMo194getSG3A4s8 = cameraBackends.mo194getSG3A4s8(strM311getCameraBackendIdAKmI2lo);
            if (cameraBackendMo194getSG3A4s8 != null) {
                return cameraBackendMo194getSG3A4s8;
            }
            fg.d("Failed to initialize ", CameraBackendId.m192toStringimpl(strM311getCameraBackendIdAKmI2lo), " from ", config);
            return null;
        }

        @CameraGraphScope
        public final CameraController provideCameraController(CameraGraphId cameraGraphId, CameraGraph.Config config, CameraBackend cameraBackend, CameraContext cameraContext, GraphProcessorImpl graphProcessorImpl, StreamGraph streamGraph, SurfaceTracker surfaceTracker) {
            cameraGraphId.getClass();
            config.getClass();
            cameraBackend.getClass();
            cameraContext.getClass();
            graphProcessorImpl.getClass();
            streamGraph.getClass();
            surfaceTracker.getClass();
            return cameraBackend.createCameraController(cameraContext, cameraGraphId, config, graphProcessorImpl, streamGraph, surfaceTracker);
        }

        @CameraGraphScope
        public final CameraMetadata provideCameraMetadata(CameraGraph.Config config, CameraBackend cameraBackend) {
            config.getClass();
            cameraBackend.getClass();
            CameraMetadata cameraMetadataMo174awaitCameraMetadataEfqyGwQ = cameraBackend.mo174awaitCameraMetadataEfqyGwQ(config.m310getCameraDz_R5H8());
            if (cameraMetadataMo174awaitCameraMetadataEfqyGwQ != null) {
                return cameraMetadataMo174awaitCameraMetadataEfqyGwQ;
            }
            cg.f(CameraId.m357toStringimpl(config.m310getCameraDz_R5H8()), "Failed to load metadata for ", 33);
            return null;
        }

        private Companion() {
        }
    }
}
