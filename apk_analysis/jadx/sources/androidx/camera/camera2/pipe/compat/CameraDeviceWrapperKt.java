package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Timestamps;
import defpackage.dh;
import defpackage.eh;
import defpackage.fh;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDeviceWrapperKt {
    public static final void closeWithTrace(CameraDevice cameraDevice) {
        if (cameraDevice != null) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i(Log.TAG, "Closing Camera " + cameraDevice.getId());
            }
            Debug debug = Debug.INSTANCE;
            String str = "CXCP#CameraDevice-" + cameraDevice.getId() + "#close";
            long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
            try {
                Trace.beginSection(str);
                try {
                    cameraDevice.close();
                } catch (NullPointerException e) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "NPE encountered during CameraDevice.close()", e);
                    }
                }
                j59 j59Var = j59.a;
                long jD = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD = fh.d(str, " - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD));
                }
            } catch (Throwable th) {
                long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD2 = fh.d(str, " - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, 1, null, "%.3f ms", sbD2));
                }
                throw th;
            }
        }
    }
}
