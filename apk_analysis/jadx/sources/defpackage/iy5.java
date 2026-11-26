package defpackage;

import android.hardware.Camera;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public final class iy5 {
    public static hy5 a(int i) {
        int i2;
        Camera.CameraInfo cameraInfo;
        Camera cameraOpen;
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w("iy5", "No cameras!");
            return null;
        }
        boolean z = i >= 0;
        if (!z) {
            i2 = 0;
            while (true) {
                if (i2 >= numberOfCameras) {
                    cameraInfo = null;
                    break;
                }
                cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i2, cameraInfo);
                if (w01.values()[cameraInfo.facing] == w01.BACK) {
                    break;
                }
                i2++;
            }
        } else {
            Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo2);
            cameraInfo = cameraInfo2;
            i2 = i;
        }
        if (i2 < numberOfCameras) {
            Log.i("iy5", "Opening camera #" + i2);
            cameraOpen = Camera.open(i2);
        } else if (z) {
            Log.w("iy5", "Requested camera does not exist: " + i);
            cameraOpen = null;
        } else {
            Log.i("iy5", "No camera facing " + w01.BACK + "; returning camera #0");
            cameraOpen = Camera.open(0);
            cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(0, cameraInfo);
        }
        if (cameraOpen == null) {
            return null;
        }
        return new hy5(i2, cameraOpen, w01.values()[cameraInfo.facing], cameraInfo.orientation);
    }
}
