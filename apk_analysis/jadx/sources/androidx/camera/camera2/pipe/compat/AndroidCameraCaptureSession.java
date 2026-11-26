package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.dh;
import defpackage.eh;
import defpackage.fh;
import defpackage.j59;
import defpackage.kn1;
import defpackage.ll3;
import defpackage.ne4;
import defpackage.vh;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AndroidCameraCaptureSession implements CameraCaptureSessionWrapper {
    private final Handler callbackHandler;
    private final CameraCaptureSession cameraCaptureSession;
    private final CameraErrorListener cameraErrorListener;
    private final CameraDeviceWrapper device;
    private final int id;

    public AndroidCameraCaptureSession(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener, Handler handler) {
        cameraDeviceWrapper.getClass();
        cameraCaptureSession.getClass();
        cameraErrorListener.getClass();
        handler.getClass();
        this.device = cameraDeviceWrapper;
        this.cameraCaptureSession = cameraCaptureSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackHandler = handler;
        this.id = CameraInterop.CameraCaptureSessionId.m363constructorimpl(CameraInterop.captureSessionIds.b());
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean abortCaptures() throws Throwable {
        double d;
        j59 j59Var;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#abortCaptures-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    this.cameraCaptureSession.abortCaptures();
                    j59Var = j59.a;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                    } else {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                        }
                    }
                    j59Var = null;
                }
                long jD = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD = fh.d(str, " - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD));
                }
                return j59Var != null;
            } catch (Throwable th) {
                th = th;
                long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD2 = fh.d(str, " - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws Throwable {
        double d;
        Integer numValueOf;
        captureRequest.getClass();
        captureCallback.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#capture-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.capture(captureRequest, captureCallback, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                            }
                        }
                        numValueOf = null;
                    }
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
                    }
                    return numValueOf;
                } catch (Throwable th) {
                    th = th;
                    long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD2 = fh.d(str, " - ");
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer captureBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) throws Throwable {
        double d;
        Integer numValueOf;
        list.getClass();
        captureCallback.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#captureBurst-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.captureBurst(list, captureCallback, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                            }
                        }
                        numValueOf = null;
                    }
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
                    }
                    return numValueOf;
                } catch (Throwable th) {
                    th = th;
                    long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD2 = fh.d(str, " - ");
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.cameraCaptureSession.close();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean finalizeOutputConfigurations(List<? extends OutputConfigurationWrapper> list) throws Throwable {
        double d;
        j59 j59Var;
        list.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#finalizeOutputConfigurations-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                try {
                    CameraCaptureSession cameraCaptureSession = this.cameraCaptureSession;
                    List<? extends OutputConfigurationWrapper> list2 = list;
                    d = 1000000.0d;
                    try {
                        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                        Iterator<T> it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(x07.a(OutputConfiguration.class)));
                        }
                        Api26Compat.finalizeOutputConfigurations(cameraCaptureSession, arrayList);
                        j59Var = j59.a;
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                            }
                        }
                        j59Var = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD));
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
            long jD2 = dh.d(debug, jMo855nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sbD2 = fh.d(str, " - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
            }
            return j59Var != null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /* JADX INFO: renamed from: getId-159jkk4, reason: not valid java name */
    public int mo731getId159jkk4() {
        return this.id;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return this.cameraCaptureSession.getInputSurface();
    }

    public final <T> T instrumentAndCatch$camera_camera2_pipe(String str, ll3<? extends T> ll3Var) throws Throwable {
        double d;
        T tInvoke;
        str.getClass();
        ll3Var.getClass();
        Debug debug = Debug.INSTANCE;
        String str2 = "CXCP#" + str + '-' + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str2);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                tInvoke = ll3Var.invoke();
                d = 1000000.0d;
            } catch (Exception e) {
                d = 1000000.0d;
                try {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                    } else {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                        }
                    }
                    tInvoke = null;
                } catch (Throwable th) {
                    th = th;
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str2, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
                    }
                    throw th;
                }
            }
            long jD2 = dh.d(debug, jMo855nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sbD2 = fh.d(str2, " - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
            }
            return tInvoke;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean isReprocessable() {
        return this.cameraCaptureSession.isReprocessable();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) throws Throwable {
        double d;
        Integer numValueOf;
        list.getClass();
        captureCallback.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingBurst-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingBurst(list, captureCallback, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                            }
                        }
                        numValueOf = null;
                    }
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
                    }
                    return numValueOf;
                } catch (Throwable th) {
                    th = th;
                    long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD2 = fh.d(str, " - ");
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws Throwable {
        double d;
        Integer numValueOf;
        captureRequest.getClass();
        captureCallback.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingRequest-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingRequest(captureRequest, captureCallback, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                            }
                        }
                        numValueOf = null;
                    }
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
                    }
                    return numValueOf;
                } catch (Throwable th) {
                    th = th;
                    long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD2 = fh.d(str, " - ");
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean stopRepeating() throws Throwable {
        double d;
        j59 j59Var;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#stopRepeating-" + getDevice().mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = getDevice().mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    this.cameraCaptureSession.stopRepeating();
                    j59Var = j59.a;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                    } else {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                        }
                    }
                    j59Var = null;
                }
                long jD = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD = fh.d(str, " - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD));
                }
                return j59Var != null;
            } catch (Throwable th) {
                th = th;
                long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD2 = fh.d(str, " - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD2));
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, CameraCaptureSession.class)) {
            return (T) this.cameraCaptureSession;
        }
        return null;
    }
}
