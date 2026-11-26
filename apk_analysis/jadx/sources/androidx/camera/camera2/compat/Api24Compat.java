package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public final class Api24Compat {
    public static final Api24Compat INSTANCE = new Api24Compat();

    private Api24Compat() {
    }

    public static final void onCaptureBufferLost(CameraCaptureSession.CaptureCallback captureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        captureCallback.getClass();
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        surface.getClass();
        captureCallback.onCaptureBufferLost(cameraCaptureSession, captureRequest, surface, j);
    }
}
