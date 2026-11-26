package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.kn;
import defpackage.v7;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Api35Compat {
    public static final Api35Compat INSTANCE = new Api35Compat();

    private Api35Compat() {
    }

    public static final CaptureRequest.Builder createCaptureRequest(CameraDevice.CameraDeviceSetup cameraDeviceSetup, int i) {
        cameraDeviceSetup.getClass();
        CaptureRequest.Builder builderCreateCaptureRequest = cameraDeviceSetup.createCaptureRequest(i);
        builderCreateCaptureRequest.getClass();
        return builderCreateCaptureRequest;
    }

    public static final List<CameraCharacteristics.Key<?>> getAvailableSessionCharacteristicsKeys(CameraCharacteristics cameraCharacteristics) {
        cameraCharacteristics.getClass();
        return cameraCharacteristics.getAvailableSessionCharacteristicsKeys();
    }

    public static final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.FLASH_TORCH_STRENGTH_DEFAULT_LEVEL;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final boolean isTorchStrengthSupported(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        return num != null && num.intValue() > 1;
    }

    public static final OutputConfiguration newImageReaderOutputConfiguration(int i, Size size) {
        size.getClass();
        return kn.a(i, size);
    }

    public static final SessionConfiguration newSessionConfiguration(int i, List<OutputConfiguration> list) {
        list.getClass();
        return v7.a(i, list);
    }
}
