package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Api34Compat {
    public static final Api34Compat INSTANCE = new Api34Compat();

    private Api34Compat() {
    }

    public static final void onReadoutStarted(CameraCaptureSession.CaptureCallback captureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        captureCallback.getClass();
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        captureCallback.onReadoutStarted(cameraCaptureSession, captureRequest, j, j2);
    }

    public static final void setSettingsOverrideZoom(Map<CaptureRequest.Key<?>, Object> map) {
        map.getClass();
        map.put(CaptureRequest.CONTROL_SETTINGS_OVERRIDE, 1);
    }
}
