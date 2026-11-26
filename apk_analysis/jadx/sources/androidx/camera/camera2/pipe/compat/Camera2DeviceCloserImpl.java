package androidx.camera.camera2.pipe.compat;

import android.content.res.TypedArray;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.e02;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.mi2;
import defpackage.n07;
import defpackage.n7;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.x07;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceCloserImpl implements Camera2DeviceCloser {
    public static final long CAMERA_CLOSE_TIMEOUT_MS = 7000;
    public static final Companion Companion = new Companion(null);
    private final Camera2Quirks camera2Quirks;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$closeCameraDevice$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$closeCameraDevice$2", f = "Camera2DeviceCloser.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ CameraDevice $cameraDevice;
        final /* synthetic */ n07 $cameraDeviceClosed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(CameraDevice cameraDevice, n07 n07Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$cameraDevice = cameraDevice;
            this.$cameraDeviceClosed = n07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.$cameraDevice, this.$cameraDeviceClosed, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CameraDeviceWrapperKt.closeWithTrace(this.$cameraDevice);
            this.$cameraDeviceClosed.b = true;
            return j59.a;
        }
    }

    public Camera2DeviceCloserImpl(Threads threads, Camera2Quirks camera2Quirks, RetryingCameraStateOpener retryingCameraStateOpener) {
        threads.getClass();
        camera2Quirks.getClass();
        retryingCameraStateOpener.getClass();
        this.threads = threads;
        this.camera2Quirks = camera2Quirks;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeCameraDevice(CameraDevice cameraDevice, AndroidCameraState androidCameraState) {
        String id = cameraDevice.getId();
        id.getClass();
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "closeCameraDevice(" + id + ')');
        }
        n07 n07Var = new n07();
        if (((j59) this.threads.runBlockingCheckedOrNull(CAMERA_CLOSE_TIMEOUT_MS, new AnonymousClass2(cameraDevice, n07Var, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "Failed to close CameraDevice(" + id + ") after 7000ms. The camera is likely in a bad state.");
        }
        CameraId.Companion companion = CameraId.Companion;
        String id2 = cameraDevice.getId();
        id2.getClass();
        String strM352constructorimpl = CameraId.m352constructorimpl(id2);
        if (this.camera2Quirks.m784shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(strM352constructorimpl) && n07Var.b) {
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Waiting for OnClosed from " + ((Object) CameraId.m357toStringimpl(strM352constructorimpl)));
            }
            if (androidCameraState.awaitCameraDeviceClosed$camera_camera2_pipe(2000L)) {
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Received OnClosed for " + ((Object) CameraId.m357toStringimpl(strM352constructorimpl)));
                    return;
                }
                return;
            }
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to close " + ((Object) CameraId.m357toStringimpl(strM352constructorimpl)) + " after 2000ms!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createCaptureSession(CameraDeviceWrapper cameraDeviceWrapper) throws InterruptedException {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(640, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);
        final Surface surface = new Surface(surfaceTexture);
        final ht htVarA = kt.a(false);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (cameraDeviceWrapper.createCaptureSession(u96.h(surface), new CameraCaptureSessionWrapper.StateCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$createCaptureSession$callback$1
            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                cameraCaptureSessionWrapper.getClass();
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                cameraCaptureSessionWrapper.getClass();
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                cameraCaptureSessionWrapper.getClass();
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Empty capture session closed");
                }
                if (htVarA.a()) {
                    surface.release();
                    surfaceTexture.release();
                }
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                cameraCaptureSessionWrapper.getClass();
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Empty capture session configure failed");
                }
                if (htVarA.a()) {
                    surface.release();
                    surfaceTexture.release();
                }
                countDownLatch.countDown();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) throws Exception {
                boolean zIsTerminated;
                cameraCaptureSessionWrapper.getClass();
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Empty capture session configured. Closing it");
                }
                if (cameraCaptureSessionWrapper instanceof AutoCloseable) {
                    cameraCaptureSessionWrapper.close();
                } else if (cameraCaptureSessionWrapper instanceof ExecutorService) {
                    ExecutorService executorService = (ExecutorService) cameraCaptureSessionWrapper;
                    if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                        executorService.shutdown();
                        boolean z = false;
                        while (!zIsTerminated) {
                            try {
                                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                            } catch (InterruptedException unused) {
                                if (!z) {
                                    executorService.shutdownNow();
                                    z = true;
                                }
                            }
                        }
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } else if (cameraCaptureSessionWrapper instanceof TypedArray) {
                    ((TypedArray) cameraCaptureSessionWrapper).recycle();
                } else if (cameraCaptureSessionWrapper instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) cameraCaptureSessionWrapper).release();
                } else {
                    if (!(cameraCaptureSessionWrapper instanceof MediaDrm)) {
                        mi2.b();
                        return;
                    }
                    ((MediaDrm) cameraCaptureSessionWrapper).release();
                }
                countDownLatch.countDown();
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                cameraCaptureSessionWrapper.getClass();
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionDisconnected() {
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public void onSessionFinalized() {
            }
        })) {
            countDownLatch.await();
            return;
        }
        if (Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "Failed to create a blank capture session! Surfaces may not be disconnected properly.");
        }
        if (htVarA.a()) {
            surface.release();
            surfaceTexture.release();
        }
    }

    private final b36<CameraDeviceWrapper, AndroidCameraState> handleQuirksBeforeClosing(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, boolean z, boolean z2) {
        AwaitOpenCameraResult awaitOpenCameraResult;
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "handleQuirksBeforeClosing(" + cameraDevice + ')');
        }
        String strMo734getCameraIdDz_R5H8 = cameraDeviceWrapper.mo734getCameraIdDz_R5H8();
        if (z) {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#reopenCameraDevice");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Reopening camera device");
                }
                closeCameraDevice(cameraDevice, androidCameraState);
                awaitOpenCameraResult = this.retryingCameraStateOpener.mo826openAndAwaitCameraWithRetry0r8Bogc(strMo734getCameraIdDz_R5H8, this);
                Trace.endSection();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } else {
            awaitOpenCameraResult = new AwaitOpenCameraResult(cameraDeviceWrapper, androidCameraState);
        }
        if (awaitOpenCameraResult.getCameraDeviceWrapper() == null || awaitOpenCameraResult.getAndroidCameraState() == null) {
            if (!log.getERROR_LOGGABLE()) {
                return null;
            }
            android.util.Log.e(Log.TAG, "Failed to retain an opened camera device!");
            return null;
        }
        if (z2) {
            Debug debug2 = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#createCaptureSession");
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Creating an empty capture session before closing " + ((Object) CameraId.m357toStringimpl(strMo734getCameraIdDz_R5H8)));
                }
                createCaptureSession(awaitOpenCameraResult.getCameraDeviceWrapper());
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Created an empty capture session.");
                }
                j59 j59Var = j59.a;
            } finally {
                Trace.endSection();
            }
        }
        return new b36<>(awaitOpenCameraResult.getCameraDeviceWrapper(), awaitOpenCameraResult.getAndroidCameraState());
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceCloser
    public void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean z, boolean z2) {
        androidCameraState.getClass();
        audioRestrictionController.getClass();
        CameraDevice cameraDevice2 = cameraDeviceWrapper != null ? (CameraDevice) cameraDeviceWrapper.unwrapAs(x07.a(CameraDevice.class)) : null;
        if (cameraDevice2 == null) {
            if (cameraDevice != null) {
                closeCameraDevice(cameraDevice, androidCameraState);
                return;
            }
            return;
        }
        CameraId.Companion companion = CameraId.Companion;
        String id = cameraDevice2.getId();
        id.getClass();
        String strM352constructorimpl = CameraId.m352constructorimpl(id);
        if (cameraDevice != null && !aa4.e(strM352constructorimpl, cameraDevice.getId())) {
            StringBuilder sbD = n7.d("Unwrapped camera device has camera ID ", strM352constructorimpl, ", but the wrapped camera device has camera ID ");
            sbD.append(cameraDevice.getId());
            sbD.append('!');
            throw new IllegalStateException(sbD.toString().toString());
        }
        if (Build.VERSION.SDK_INT >= 30) {
            audioRestrictionController.removeListener(cameraDeviceWrapper);
        }
        CameraDevice cameraDevice3 = cameraDevice2;
        b36<CameraDeviceWrapper, AndroidCameraState> b36VarHandleQuirksBeforeClosing = handleQuirksBeforeClosing(cameraDeviceWrapper, cameraDevice3, androidCameraState, z, z2);
        if (b36VarHandleQuirksBeforeClosing == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e(Log.TAG, "Failed to handle quirks before closing the camera device!");
            }
            cameraDeviceWrapper.onDeviceClosing();
            cameraDeviceWrapper.onDeviceClosed();
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
            return;
        }
        CameraDeviceWrapper cameraDeviceWrapper2 = b36VarHandleQuirksBeforeClosing.b;
        AndroidCameraState androidCameraState2 = b36VarHandleQuirksBeforeClosing.c;
        Object objUnwrapAs = cameraDeviceWrapper2.unwrapAs(x07.a(CameraDevice.class));
        if (objUnwrapAs == null) {
            ah.f("Required value was null.");
            return;
        }
        cameraDeviceWrapper.onDeviceClosing();
        closeCameraDevice((CameraDevice) objUnwrapAs, androidCameraState2);
        cameraDeviceWrapper.onDeviceClosed();
        if (z) {
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice3);
        }
    }

    public final Threads getThreads() {
        return this.threads;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
