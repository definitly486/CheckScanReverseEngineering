package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import android.view.Surface;
import com.tapjoy.TJAdUnitConstants;
import defpackage.me0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RejectOperationCameraCaptureSession extends CameraCaptureSession {
    private final String createExceptionMessage(String str) {
        return me0.c("Current capture session is running on extensions mode which isn't allowed to invoke the ", str, " function!");
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void abortCaptures() {
        throw new IllegalArgumentException(createExceptionMessage("abortCaptures"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        captureRequest.getClass();
        throw new IllegalArgumentException(createExceptionMessage("capture"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        list.getClass();
        throw new IllegalArgumentException(createExceptionMessage("captureBurst"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession, java.lang.AutoCloseable
    public void close() {
        throw new IllegalArgumentException(createExceptionMessage(TJAdUnitConstants.String.CLOSE));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void finalizeOutputConfigurations(List<OutputConfiguration> list) {
        throw new IllegalArgumentException(createExceptionMessage("finalizeOutputConfigurations"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraDevice getDevice() {
        throw new IllegalArgumentException(createExceptionMessage("getDevice"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public Surface getInputSurface() {
        throw new IllegalArgumentException(createExceptionMessage("getInputSurface"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean isReprocessable() {
        throw new IllegalArgumentException(createExceptionMessage("isReprocessable"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(Surface surface) {
        surface.getClass();
        throw new IllegalArgumentException(createExceptionMessage("prepare"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        list.getClass();
        throw new IllegalArgumentException(createExceptionMessage("setRepeatingBurst"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        captureRequest.getClass();
        throw new IllegalArgumentException(createExceptionMessage("setRepeatingRequest"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void stopRepeating() {
        throw new IllegalArgumentException(createExceptionMessage("stopRepeating"));
    }
}
