package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.Parameters;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestListeners;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.GraphProcessor;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.o22;
import defpackage.u96;
import defpackage.w22;
import defpackage.ws6;
import defpackage.y22;
import defpackage.z22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class SharedCameraGraphModules {
    public static final Companion Companion = new Companion(null);

    public abstract CameraGraph bindCameraGraph(CameraGraphImpl cameraGraphImpl);

    @CameraGraphContext
    public abstract Context bindCameraGraphContext(@CameraPipeContext Context context);

    public abstract RequestListeners bindCameraGraphListeners(CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl);

    public abstract Parameters bindCameraGraphParameters(CameraGraphParametersImpl cameraGraphParametersImpl);

    public abstract GraphListener bindGraphListener(GraphProcessorImpl graphProcessorImpl);

    public abstract GraphProcessor bindGraphProcessor(GraphProcessorImpl graphProcessorImpl);

    public abstract StreamGraph bindStreamGraph(StreamGraphImpl streamGraphImpl);

    @CameraGraphScope
    public abstract SurfaceTracker bindSurfaceTracker(SurfaceGraph surfaceGraph);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @CameraGraphScope
        @ForCameraGraph
        public final y22 provideCameraGraphCoroutineScope(Threads threads, @CameraPipeJob mb4 mb4Var) {
            threads.getClass();
            mb4Var.getClass();
            return z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher().plus(new w22("CXCP-Graph"))));
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0023  */
        @CameraGraphScope
        public final FrameDistributor provideFrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, CameraMetadata cameraMetadata, SystemClockOffsets systemClockOffsets) {
            boolean z;
            streamGraphImpl.getClass();
            frameCaptureQueue.getClass();
            cameraMetadata.getClass();
            systemClockOffsets.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            if (num != null) {
                z = num.intValue() == 1;
            }
            return new FrameDistributor(streamGraphImpl, frameCaptureQueue, z, systemClockOffsets.getRealtimeNsToMonotonicNs());
        }

        @CameraGraphScope
        @ForCameraGraph
        public final List<Request.Listener> provideRequestListeners(CameraGraph.Config config, Listener3A listener3A, FrameDistributor frameDistributor) {
            config.getClass();
            listener3A.getClass();
            frameDistributor.getClass();
            ArrayList arrayListK = u96.k(listener3A);
            arrayListK.add(listener3A);
            arrayListK.add(frameDistributor);
            arrayListK.addAll(config.getDefaultListeners());
            return arrayListK;
        }

        @CameraGraphScope
        public final SurfaceGraph provideSurfaceGraph(StreamGraphImpl streamGraphImpl, ws6<CameraController> ws6Var, CameraSurfaceManager cameraSurfaceManager) {
            streamGraphImpl.getClass();
            ws6Var.getClass();
            cameraSurfaceManager.getClass();
            return new SurfaceGraph(streamGraphImpl, ws6Var, cameraSurfaceManager, streamGraphImpl.getImageSourceMap$camera_camera2_pipe());
        }

        @CameraGraphScope
        public final SystemClockOffsets provideSystemClockOffsets() {
            return SystemClockOffsets.Companion.estimate();
        }

        private Companion() {
        }
    }
}
