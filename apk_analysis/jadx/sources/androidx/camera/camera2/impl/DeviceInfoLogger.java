package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceInfoLogger {
    public static final DeviceInfoLogger INSTANCE = new DeviceInfoLogger();

    private DeviceInfoLogger() {
    }

    private final void logDeviceLevel(CameraProperties cameraProperties) {
        String str;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key.getClass();
        Integer num = (Integer) metadata.getOrDefault((CameraCharacteristics.Key<int>) key, -1);
        if (num != null && num.intValue() == 2) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY";
        } else if (num != null && num.intValue() == 4) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL";
        } else if (num != null && num.intValue() == 0) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED";
        } else if (num != null && num.intValue() == 1) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_FULL";
        } else if (num != null && num.intValue() == 3) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_3";
        } else {
            str = "Unknown value: " + num;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isInfoEnabled(Log.TAG)) {
            android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "Device Level: ".concat(str));
        }
    }

    public final void logDeviceInfo(CameraProperties cameraProperties) {
        cameraProperties.getClass();
        logDeviceLevel(cameraProperties);
    }
}
