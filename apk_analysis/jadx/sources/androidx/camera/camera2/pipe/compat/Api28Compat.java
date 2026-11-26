package androidx.camera.camera2.pipe.compat;

import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.Image;
import android.media.ImageReader;
import android.view.Surface;
import defpackage.dn;
import defpackage.ne4;
import defpackage.x07;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Api28Compat {
    public static final Api28Compat INSTANCE = new Api28Compat();

    private Api28Compat() {
    }

    public static final void createCaptureSession(CameraDevice cameraDevice, SessionConfiguration sessionConfiguration) throws CameraAccessException {
        cameraDevice.getClass();
        sessionConfiguration.getClass();
        cameraDevice.createCaptureSession(sessionConfiguration);
    }

    public static final void discardFreeBuffers(ImageReader imageReader) {
        imageReader.getClass();
        imageReader.discardFreeBuffers();
    }

    public static final List<CaptureRequest.Key<?>> getAvailablePhysicalCameraRequestKeys(CameraCharacteristics cameraCharacteristics) {
        cameraCharacteristics.getClass();
        return cameraCharacteristics.getAvailablePhysicalCameraRequestKeys();
    }

    public static final List<CaptureRequest.Key<?>> getAvailableSessionKeys(CameraCharacteristics cameraCharacteristics) {
        cameraCharacteristics.getClass();
        return cameraCharacteristics.getAvailableSessionKeys();
    }

    public static final HardwareBuffer getHardwareBuffer(Image image) {
        image.getClass();
        return image.getHardwareBuffer();
    }

    public static final int getMaxSharedSurfaceCount(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getMaxSharedSurfaceCount();
    }

    public static final Set<String> getPhysicalCameraIds(CameraCharacteristics cameraCharacteristics) {
        cameraCharacteristics.getClass();
        Set<String> physicalCameraIds = cameraCharacteristics.getPhysicalCameraIds();
        physicalCameraIds.getClass();
        return physicalCameraIds;
    }

    public static final Map<String, CaptureResult> getPhysicalCaptureResults(TotalCaptureResult totalCaptureResult) {
        totalCaptureResult.getClass();
        return totalCaptureResult.getPhysicalCameraResults();
    }

    public static final SessionConfiguration newSessionConfiguration(int i, List<OutputConfiguration> list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
        list.getClass();
        executor.getClass();
        stateCallback.getClass();
        return dn.a(i, list, executor, stateCallback);
    }

    public static final void openCamera(CameraManager cameraManager, String str, Executor executor, CameraDevice.StateCallback stateCallback) throws CameraAccessException {
        cameraManager.getClass();
        str.getClass();
        executor.getClass();
        stateCallback.getClass();
        cameraManager.openCamera(str, executor, stateCallback);
    }

    public static final void registerAvailabilityCallback(CameraManager cameraManager, Executor executor, CameraManager.AvailabilityCallback availabilityCallback) {
        cameraManager.getClass();
        executor.getClass();
        availabilityCallback.getClass();
        cameraManager.registerAvailabilityCallback(executor, availabilityCallback);
    }

    public static final void removeSurface(OutputConfiguration outputConfiguration, Surface surface) {
        outputConfiguration.getClass();
        surface.getClass();
        outputConfiguration.removeSurface(surface);
    }

    public static final void setInputConfiguration(SessionConfiguration sessionConfiguration, InputConfiguration inputConfiguration) {
        sessionConfiguration.getClass();
        inputConfiguration.getClass();
        sessionConfiguration.setInputConfiguration(inputConfiguration);
    }

    public static final void setPhysicalCameraId(OutputConfiguration outputConfiguration, String str) {
        outputConfiguration.getClass();
        outputConfiguration.setPhysicalCameraId(str);
    }

    public static final void setSessionParameters(SessionConfiguration sessionConfiguration, CaptureRequest captureRequest) {
        sessionConfiguration.getClass();
        captureRequest.getClass();
        sessionConfiguration.setSessionParameters(captureRequest);
    }

    public static final <T> T unwrapAsHardwareBuffer(Image image, ne4<T> ne4Var) {
        image.getClass();
        ne4Var.getClass();
        if (ne4Var.equals(x07.a(HardwareBuffer.class))) {
            return (T) image.getHardwareBuffer();
        }
        return null;
    }
}
