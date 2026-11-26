package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Api24Compat {
    public static final Api24Compat INSTANCE = new Api24Compat();

    private Api24Compat() {
    }

    public static final void createCaptureSessionByOutputConfigurations(CameraDevice cameraDevice, List<OutputConfiguration> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) throws CameraAccessException {
        cameraDevice.getClass();
        list.getClass();
        stateCallback.getClass();
        cameraDevice.createCaptureSessionByOutputConfigurations(list, stateCallback, handler);
    }

    public static final void createReprocessableCaptureSessionByConfigurations(CameraDevice cameraDevice, InputConfiguration inputConfiguration, List<OutputConfiguration> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) throws CameraAccessException {
        cameraDevice.getClass();
        inputConfiguration.getClass();
        list.getClass();
        stateCallback.getClass();
        cameraDevice.createReprocessableCaptureSessionByConfigurations(inputConfiguration, list, stateCallback, handler);
    }

    public static final int getSurfaceGroupId(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getSurfaceGroupId();
    }
}
