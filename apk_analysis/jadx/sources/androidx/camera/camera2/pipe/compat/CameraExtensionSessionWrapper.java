package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession;
import androidx.camera.camera2.pipe.UnsafeWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface CameraExtensionSessionWrapper extends CameraCaptureSessionWrapper, UnsafeWrapper, AutoCloseable {

    public interface StateCallback extends SessionStateCallback {
        void onClosed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);

        void onConfigureFailed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);

        void onConfigured(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    CameraDeviceWrapper getDevice();

    CameraExtensionSession.StillCaptureLatency getRealTimeCaptureLatency();

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    boolean stopRepeating();
}
