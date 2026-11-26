package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Api30Compat {
    public static final Api30Compat INSTANCE = new Api30Compat();

    private Api30Compat() {
    }

    public static final int getCameraAudioRestriction(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        return cameraDevice.getCameraAudioRestriction();
    }

    public static final Set<Set<String>> getConcurrentCameraIds(CameraManager cameraManager) throws CameraAccessException {
        cameraManager.getClass();
        Set<Set<String>> concurrentCameraIds = cameraManager.getConcurrentCameraIds();
        concurrentCameraIds.getClass();
        return concurrentCameraIds;
    }

    public static final void setCameraAudioRestriction(CameraDevice cameraDevice, int i) throws CameraAccessException {
        cameraDevice.getClass();
        cameraDevice.setCameraAudioRestriction(i);
    }
}
