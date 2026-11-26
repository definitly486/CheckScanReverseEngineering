package androidx.camera.camera2.pipe.config;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessorFactory;
import androidx.camera.camera2.pipe.compat.StandardCamera2CaptureSequenceProcessorFactory;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.o22;
import defpackage.w22;
import defpackage.ws6;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public abstract class Camera2ControllerModule {
    public static final Companion Companion = new Companion(null);

    public abstract Camera2CaptureSequenceProcessorFactory bindCamera2RequestProcessorFactory(StandardCamera2CaptureSequenceProcessorFactory standardCamera2CaptureSequenceProcessorFactory);

    public abstract CameraController bindCameraController(Camera2CameraController camera2CameraController);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @Camera2ControllerScope
        public final CameraStatusMonitor provideCameraStatusMonitor(ws6<CameraManager> ws6Var, Threads threads, CameraGraph.Config config, @CameraPipeJob mb4 mb4Var) {
            ws6Var.getClass();
            threads.getClass();
            config.getClass();
            mb4Var.getClass();
            return new Camera2CameraStatusMonitor(ws6Var, threads, config.m310getCameraDz_R5H8(), mb4Var, null);
        }

        @Camera2ControllerScope
        public final y22 provideCoroutineScope(Threads threads, @CameraPipeJob mb4 mb4Var) {
            threads.getClass();
            mb4Var.getClass();
            return z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher().plus(new w22("CXCP-Camera2Controller"))));
        }

        private Companion() {
        }
    }
}
