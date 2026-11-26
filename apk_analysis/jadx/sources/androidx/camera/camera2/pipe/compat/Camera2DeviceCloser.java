package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2DeviceCloser {

    public static final class DefaultImpls {
    }

    static /* synthetic */ void closeCamera$default(Camera2DeviceCloser camera2DeviceCloser, CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: closeCamera");
            return;
        }
        if ((i & 1) != 0) {
            cameraDeviceWrapper = null;
        }
        if ((i & 2) != 0) {
            cameraDevice = null;
        }
        if ((i & 16) != 0) {
            z = false;
        }
        if ((i & 32) != 0) {
            z2 = false;
        }
        camera2DeviceCloser.closeCamera(cameraDeviceWrapper, cameraDevice, androidCameraState, audioRestrictionController, z, z2);
    }

    void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean z, boolean z2);
}
