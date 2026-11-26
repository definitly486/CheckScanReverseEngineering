package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import android.hardware.camera2.params.OutputConfiguration;
import android.util.Size;
import defpackage.ah;
import defpackage.en;
import defpackage.fn;
import defpackage.gn;
import defpackage.hn;
import defpackage.kn1;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Api31Compat {
    public static final Api31Compat INSTANCE = new Api31Compat();

    private Api31Compat() {
    }

    public static final void addSensorPixelModeUsed(OutputConfiguration outputConfiguration, int i) {
        outputConfiguration.getClass();
        outputConfiguration.addSensorPixelModeUsed(i);
    }

    public static final void createExtensionCaptureSession(CameraDevice cameraDevice, ExtensionSessionConfiguration extensionSessionConfiguration) throws CameraAccessException {
        cameraDevice.getClass();
        extensionSessionConfiguration.getClass();
        cameraDevice.createExtensionSession(extensionSessionConfiguration);
    }

    public static final CameraExtensionCharacteristics getCameraExtensionCharacteristics(CameraManager cameraManager, String str) throws CameraAccessException {
        cameraManager.getClass();
        str.getClass();
        CameraExtensionCharacteristics cameraExtensionCharacteristics = cameraManager.getCameraExtensionCharacteristics(str);
        cameraExtensionCharacteristics.getClass();
        return cameraExtensionCharacteristics;
    }

    public static final List<Size> getExtensionSupportedSizes(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i, Class<?> cls) {
        cameraExtensionCharacteristics.getClass();
        cls.getClass();
        List<Size> extensionSupportedSizes = cameraExtensionCharacteristics.getExtensionSupportedSizes(i, cls);
        extensionSupportedSizes.getClass();
        return extensionSupportedSizes;
    }

    public static final Map<String, CaptureResult> getPhysicalCameraTotalResults(TotalCaptureResult totalCaptureResult) {
        totalCaptureResult.getClass();
        return totalCaptureResult.getPhysicalCameraTotalResults();
    }

    public static final List<Integer> getSupportedExtensions(CameraExtensionCharacteristics cameraExtensionCharacteristics) {
        cameraExtensionCharacteristics.getClass();
        List<Integer> supportedExtensions = cameraExtensionCharacteristics.getSupportedExtensions();
        supportedExtensions.getClass();
        return supportedExtensions;
    }

    public static final ExtensionSessionConfiguration newExtensionSessionConfiguration(int i, List<OutputConfiguration> list, Executor executor, CameraExtensionSession$StateCallback cameraExtensionSession$StateCallback) {
        list.getClass();
        executor.getClass();
        cameraExtensionSession$StateCallback.getClass();
        return en.a(i, list, executor, cameraExtensionSession$StateCallback);
    }

    public static final InputConfiguration newInputConfiguration(List<InputConfigData> list, String str) {
        list.getClass();
        str.getClass();
        if (list.isEmpty()) {
            ah.f("Call to create InputConfiguration but list of InputConfigData is empty.");
            return null;
        }
        if (list.size() == 1) {
            InputConfigData inputConfigData = (InputConfigData) qn1.T(list);
            return new InputConfiguration(inputConfigData.getWidth(), inputConfigData.getHeight(), inputConfigData.getFormat());
        }
        List<InputConfigData> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        for (InputConfigData inputConfigData2 : list2) {
            hn.b();
            arrayList.add(fn.a(inputConfigData2.getWidth(), inputConfigData2.getHeight(), str));
        }
        return gn.a(((InputConfigData) qn1.T(list)).getFormat(), arrayList);
    }

    public static final MultiResolutionStreamInfo newMultiResolutionStreamInfo(int i, int i2, String str) {
        str.getClass();
        return fn.a(i, i2, str);
    }

    public static final List<Size> getExtensionSupportedSizes(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i, int i2) {
        cameraExtensionCharacteristics.getClass();
        List<Size> extensionSupportedSizes = cameraExtensionCharacteristics.getExtensionSupportedSizes(i, i2);
        extensionSupportedSizes.getClass();
        return extensionSupportedSizes;
    }
}
