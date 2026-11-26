package androidx.camera.camera2.interop;

import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseCameraControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraControl implements UseCaseCameraControl {
    public static final Companion Companion = new Companion(null);
    private UseCaseCameraRequestControl _useCaseCameraRequestControl;
    private final Camera2CameraControlCompat compat;
    private final ComboRequestListener requestListener;
    private final UseCaseThreads threads;

    private Camera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        this.compat = camera2CameraControlCompat;
        this.threads = useCaseThreads;
        this.requestListener = comboRequestListener;
    }

    public static final Camera2CameraControl create(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        return Companion.create(camera2CameraControlCompat, useCaseThreads, comboRequestListener);
    }

    public static final Camera2CameraControl from(CameraControl cameraControl) {
        return Companion.from(cameraControl);
    }

    private final ListenableFuture<Void> updateAsync(String str) {
        ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture(Camera2CameraControlCompat.applyAsync$default(this.compat, getRequestControl(), false, 2, null), (Object) str));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    public final ListenableFuture<Void> addCaptureRequestOptions(CaptureRequestOptions captureRequestOptions) {
        captureRequestOptions.getClass();
        this.compat.addRequestOption(captureRequestOptions);
        return updateAsync("addCaptureRequestOptions");
    }

    public final ListenableFuture<Void> clearCaptureRequestOptions() {
        this.compat.clearRequestOption();
        return updateAsync("clearCaptureRequestOptions");
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return this.compat.getRequestOption();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._useCaseCameraRequestControl;
    }

    public final ComboRequestListener getRequestListener$camera_camera2() {
        return this.requestListener;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.compat.cancelCurrentTask();
        this.requestListener.removeListener(this.compat);
    }

    public final ListenableFuture<Void> setCaptureRequestOptions(CaptureRequestOptions captureRequestOptions) {
        captureRequestOptions.getClass();
        this.compat.clearRequestOption();
        this.compat.addRequestOption(captureRequestOptions);
        return updateAsync("setCaptureRequestOptions");
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._useCaseCameraRequestControl = useCaseCameraRequestControl;
        if (useCaseCameraRequestControl != null) {
            this.requestListener.removeListener(this.compat);
            this.requestListener.addListener(this.compat, this.threads.getSequentialExecutor());
            this.compat.applyAsync(useCaseCameraRequestControl, false);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Camera2CameraControl create(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
            camera2CameraControlCompat.getClass();
            useCaseThreads.getClass();
            comboRequestListener.getClass();
            return new Camera2CameraControl(camera2CameraControlCompat, useCaseThreads, comboRequestListener, null);
        }

        public final Camera2CameraControl from(CameraControl cameraControl) {
            cameraControl.getClass();
            CameraControlInternal implementation = ((CameraControlInternal) cameraControl).getImplementation();
            implementation.getClass();
            Preconditions.checkArgument(implementation instanceof CameraControlAdapter, "CameraControl doesn't contain Camera2 implementation.");
            return ((CameraControlAdapter) implementation).getCamera2cameraControl();
        }

        private Companion() {
        }
    }

    public /* synthetic */ Camera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, jh2 jh2Var) {
        this(camera2CameraControlCompat, useCaseThreads, comboRequestListener);
    }
}
