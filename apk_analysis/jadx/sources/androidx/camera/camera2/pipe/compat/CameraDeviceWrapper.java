package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.view.Surface;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraDeviceWrapper extends UnsafeWrapper, AudioRestrictionController.Listener {
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw */
    CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i);

    boolean createCaptureSession(SessionConfigData sessionConfigData);

    boolean createCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createCaptureSessionByOutputConfigurations(List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createConstrainedHighSpeedCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createExtensionSession(ExtensionSessionConfigData extensionSessionConfigData);

    CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult);

    boolean createReprocessableCaptureSession(InputConfiguration inputConfiguration, List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfigData, List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    /* JADX INFO: renamed from: getCameraAudioRestriction-_b5Q8KE */
    int mo733getCameraAudioRestriction_b5Q8KE();

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    String mo734getCameraIdDz_R5H8();

    void onDeviceClosed();

    void onDeviceClosing();
}
