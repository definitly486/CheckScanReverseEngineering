package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class ExceptionsKt {
    /* JADX INFO: renamed from: catchAndReportCameraExceptions-RzXb1QE, reason: not valid java name */
    public static final <T> T m804catchAndReportCameraExceptionsRzXb1QE(String str, CameraErrorListener cameraErrorListener, ll3<? extends T> ll3Var) throws Exception {
        str.getClass();
        cameraErrorListener.getClass();
        ll3Var.getClass();
        try {
            return ll3Var.invoke();
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                }
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
            }
            cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
            return null;
        }
    }
}
