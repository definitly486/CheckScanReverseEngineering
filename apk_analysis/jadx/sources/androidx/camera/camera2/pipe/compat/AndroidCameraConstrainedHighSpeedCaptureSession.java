package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.ne4;
import defpackage.vh;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCameraConstrainedHighSpeedCaptureSession extends AndroidCameraCaptureSession implements CameraConstrainedHighSpeedCaptureSessionWrapper {
    private final CameraConstrainedHighSpeedCaptureSession session;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCameraConstrainedHighSpeedCaptureSession(CameraDeviceWrapper cameraDeviceWrapper, CameraConstrainedHighSpeedCaptureSession cameraConstrainedHighSpeedCaptureSession, CameraErrorListener cameraErrorListener, Handler handler) {
        super(cameraDeviceWrapper, cameraConstrainedHighSpeedCaptureSession, cameraErrorListener, handler);
        cameraDeviceWrapper.getClass();
        cameraConstrainedHighSpeedCaptureSession.getClass();
        cameraErrorListener.getClass();
        handler.getClass();
        this.session = cameraConstrainedHighSpeedCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraConstrainedHighSpeedCaptureSessionWrapper
    public List<CaptureRequest> createHighSpeedRequestList(CaptureRequest captureRequest) {
        captureRequest.getClass();
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("CXCP#createHighSpeedRequestList");
                return this.session.createHighSpeedRequestList(captureRequest);
            } finally {
                Trace.endSection();
            }
        } catch (IllegalArgumentException unused) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w(Log.TAG, "Failed to createHighSpeedRequestList from " + getDevice() + " because the output surface was destroyed before calling createHighSpeedRequestList.");
            return null;
        } catch (IllegalStateException unused2) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w(Log.TAG, "Failed to createHighSpeedRequestList. " + getDevice() + " may be closed.");
            return null;
        } catch (UnsupportedOperationException unused3) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w(Log.TAG, "Failed to createHighSpeedRequestList from " + getDevice() + " because the output surface was not available.");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AndroidCameraCaptureSession, androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        return vh.g(ne4Var, CameraConstrainedHighSpeedCaptureSession.class) ? (T) this.session : (T) super.unwrapAs(ne4Var);
    }
}
