package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceSetup implements Camera2DeviceSetupWrapper {
    private final CameraDevice.CameraDeviceSetup cameraDeviceSetup;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;

    private Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String str, CameraErrorListener cameraErrorListener) {
        cameraDeviceSetup.getClass();
        str.getClass();
        cameraErrorListener.getClass();
        this.cameraDeviceSetup = cameraDeviceSetup;
        this.cameraId = str;
        this.cameraErrorListener = cameraErrorListener;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceSetupWrapper
    public CaptureRequest.Builder createCaptureRequest(int i) throws Exception {
        String str = this.cameraId;
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return this.cameraDeviceSetup.createCaptureRequest(i);
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
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

    public /* synthetic */ Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String str, CameraErrorListener cameraErrorListener, jh2 jh2Var) {
        this(cameraDeviceSetup, str, cameraErrorListener);
    }
}
