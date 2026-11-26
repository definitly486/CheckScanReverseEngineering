package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$ExtensionCaptureCallback;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.ah;
import defpackage.j59;
import defpackage.kt;
import defpackage.mt;
import defpackage.ne4;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.vh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AndroidCameraExtensionSession implements CameraExtensionSessionWrapper {
    private final Executor callbackExecutor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraExtensionSession cameraExtensionSession;
    private final CameraDeviceWrapper device;
    private final Map<CameraExtensionSession, Long> extensionSessionMap;
    private final mt frameNumbers;
    private final int id;

    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallback extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final ConcurrentLinkedQueue<Long> frameQueue;
        final /* synthetic */ AndroidCameraExtensionSession this$0;

        public Camera2CaptureSessionCallbackToExtensionCaptureCallback(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureCallback camera2CaptureCallback) {
            camera2CaptureCallback.getClass();
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = camera2CaptureCallback;
            this.frameQueue = new ConcurrentLinkedQueue<>();
        }

        private final long dequeueFrameNumber(CameraExtensionSession cameraExtensionSession) {
            if (this.frameQueue.isEmpty()) {
                incrementAndGetNextFrameNumber(cameraExtensionSession);
            }
            Long lRemove = this.frameQueue.remove();
            lRemove.getClass();
            return lRemove.longValue();
        }

        private final long incrementAndGetNextFrameNumber(CameraExtensionSession cameraExtensionSession) {
            long jA = this.this$0.frameNumbers.a();
            this.this$0.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(jA));
            this.frameQueue.add(Long.valueOf(jA));
            return jA;
        }

        public void onCaptureFailed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            this.captureCallback.mo760onCaptureFailedRuT0dZU(captureRequest, FrameNumber.m464constructorimpl(dequeueFrameNumber(cameraExtensionSession)));
        }

        public void onCaptureProcessProgressed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, int i) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            this.captureCallback.onCaptureProcessProgressed(captureRequest, i);
        }

        public void onCaptureProcessStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
        }

        public void onCaptureResultAvailable(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            totalCaptureResult.getClass();
            this.captureCallback.mo759onCaptureCompletedrmrZIYk(captureRequest, totalCaptureResult, FrameNumber.m464constructorimpl(dequeueFrameNumber(cameraExtensionSession)));
        }

        public void onCaptureSequenceAborted(CameraExtensionSession cameraExtensionSession, int i) {
            cameraExtensionSession.getClass();
            this.captureCallback.onCaptureSequenceAborted(i);
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession cameraExtensionSession, int i) {
            cameraExtensionSession.getClass();
            Long l = (Long) this.this$0.extensionSessionMap.get(cameraExtensionSession);
            Camera2CaptureCallback camera2CaptureCallback = this.captureCallback;
            l.getClass();
            camera2CaptureCallback.onCaptureSequenceCompleted(i, l.longValue());
        }

        public void onCaptureStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, long j) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            this.captureCallback.onCaptureStarted(captureRequest, incrementAndGetNextFrameNumber(cameraExtensionSession), j);
        }
    }

    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final Map<CaptureRequest, List<Long>> captureRequestMap;
        final /* synthetic */ AndroidCameraExtensionSession this$0;

        public Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureCallback camera2CaptureCallback, Map<CaptureRequest, List<Long>> map) {
            camera2CaptureCallback.getClass();
            map.getClass();
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = camera2CaptureCallback;
            this.captureRequestMap = map;
        }

        public void onCaptureFailed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            List<Long> list = this.captureRequestMap.get(captureRequest);
            list.getClass();
            if (list.size() == 1) {
                List<Long> list2 = this.captureRequestMap.get(captureRequest);
                list2.getClass();
                this.captureCallback.mo760onCaptureFailedRuT0dZU(captureRequest, FrameNumber.m464constructorimpl(list2.get(0).longValue()));
                return;
            }
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                StringBuilder sb = new StringBuilder("onCaptureFailed is not triggered for repeating requests. Request frame numbers: ");
                Object obj = this.captureRequestMap.get(captureRequest);
                obj.getClass();
                sb.append(((List) obj).stream());
                android.util.Log.i(Log.TAG, sb.toString());
            }
        }

        public void onCaptureProcessProgressed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, int i) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            this.captureCallback.onCaptureProcessProgressed(captureRequest, i);
        }

        public void onCaptureProcessStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
        }

        public void onCaptureSequenceAborted(CameraExtensionSession cameraExtensionSession, int i) {
            cameraExtensionSession.getClass();
            this.captureCallback.onCaptureSequenceAborted(i);
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession cameraExtensionSession, int i) {
            cameraExtensionSession.getClass();
            Long l = (Long) this.this$0.extensionSessionMap.get(cameraExtensionSession);
            Camera2CaptureCallback camera2CaptureCallback = this.captureCallback;
            l.getClass();
            camera2CaptureCallback.onCaptureSequenceCompleted(i, l.longValue());
        }

        public void onCaptureStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, long j) {
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            long jA = this.this$0.frameNumbers.a();
            this.this$0.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(jA));
            Map<CaptureRequest, List<Long>> map = this.captureRequestMap;
            List<Long> arrayList = map.get(captureRequest);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                map.put(captureRequest, arrayList);
            }
            arrayList.add(Long.valueOf(jA));
            this.captureCallback.onCaptureStarted(captureRequest, jA, j);
        }
    }

    public AndroidCameraExtensionSession(CameraDeviceWrapper cameraDeviceWrapper, CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener, Executor executor) {
        cameraDeviceWrapper.getClass();
        cameraExtensionSession.getClass();
        cameraErrorListener.getClass();
        executor.getClass();
        this.device = cameraDeviceWrapper;
        this.cameraExtensionSession = cameraExtensionSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackExecutor = executor;
        this.id = CameraInterop.CameraCaptureSessionId.m363constructorimpl(CameraInterop.captureSessionIds.b());
        this.frameNumbers = kt.c();
        this.extensionSessionMap = new HashMap();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean abortCaptures() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws Exception {
        captureRequest.getClass();
        captureCallback.getClass();
        String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.capture(captureRequest, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, (Camera2CaptureCallback) captureCallback)) : this.cameraExtensionSession.capture(captureRequest, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(this, (Camera2CaptureCallback) captureCallback, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                return null;
            }
            if (!(e instanceof IllegalStateException)) {
                throw e;
            }
            if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return null;
            }
            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer captureBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) throws Exception {
        list.getClass();
        captureCallback.getClass();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            capture((CaptureRequest) it.next(), captureCallback);
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws CameraAccessException {
        this.cameraExtensionSession.close();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean finalizeOutputConfigurations(List<? extends OutputConfigurationWrapper> list) {
        list.getClass();
        if (!Log.INSTANCE.getWARN_LOGGABLE()) {
            return false;
        }
        android.util.Log.w(Log.TAG, "CameraExtensionSession does not support finalizeOutputConfigurations()");
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /* JADX INFO: renamed from: getId-159jkk4 */
    public int mo731getId159jkk4() {
        return this.id;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper
    public CameraExtensionSession.StillCaptureLatency getRealTimeCaptureLatency() {
        if (Build.VERSION.SDK_INT >= 34) {
            return this.cameraExtensionSession.getRealtimeStillCaptureLatency();
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean isReprocessable() {
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) {
        list.getClass();
        captureCallback.getClass();
        if (list.size() == 1) {
            return setRepeatingRequest((CaptureRequest) qn1.k0(list), captureCallback);
        }
        ah.f("CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws Exception {
        captureRequest.getClass();
        captureCallback.getClass();
        String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.setRepeatingRequest(captureRequest, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, (Camera2CaptureCallback) captureCallback)) : this.cameraExtensionSession.setRepeatingRequest(captureRequest, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(this, (Camera2CaptureCallback) captureCallback, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                return null;
            }
            if (!(e instanceof IllegalStateException)) {
                throw e;
            }
            if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return null;
            }
            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean stopRepeating() throws Exception {
        j59 j59Var;
        String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            this.cameraExtensionSession.stopRepeating();
            j59Var = j59.a;
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                }
            }
            j59Var = null;
        }
        return j59Var != null;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, qz0.c())) {
            return (T) this.cameraExtensionSession;
        }
        return null;
    }
}
