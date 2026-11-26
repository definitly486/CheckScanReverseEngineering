package androidx.camera.camera2.pipe.compat;

import android.graphics.ColorSpace;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.CameraColorSpace;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.ah;
import defpackage.b36;
import defpackage.dh;
import defpackage.eh;
import defpackage.fh;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kt;
import defpackage.ll3;
import defpackage.ne4;
import defpackage.ot;
import defpackage.qn1;
import defpackage.vh;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCameraDevice implements CameraDeviceWrapper {
    private final ot<SessionStateCallback> _lastStateCallback;
    private final CameraDevice cameraDevice;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;
    private final CameraMetadata cameraMetadata;
    private final ht closed;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final Threads threads;

    private AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads) {
        cameraMetadata.getClass();
        cameraDevice.getClass();
        str.getClass();
        cameraErrorListener.getClass();
        threads.getClass();
        this.cameraMetadata = cameraMetadata;
        this.cameraDevice = cameraDevice;
        this.cameraId = str;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.threads = threads;
        this.closed = kt.a(false);
        this._lastStateCallback = kt.d(null);
    }

    private final b36<Boolean, SessionStateCallback> checkAndSetStateCallback(SessionStateCallback sessionStateCallback) {
        if (!this.closed.b()) {
            return new b36<>(Boolean.TRUE, this._lastStateCallback.b(sessionStateCallback));
        }
        onSessionFinalizedWithTrace(sessionStateCallback);
        return new b36<>(Boolean.FALSE, null);
    }

    private final <T> T instrumentAndCatch(String str, ll3<? extends T> ll3Var) throws Throwable {
        double d;
        T tInvoke;
        Debug debug = Debug.INSTANCE;
        String str2 = "CXCP#" + str + '-' + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str2);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
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

    private final void onSessionDisconnectedWithTrace(SessionStateCallback sessionStateCallback) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#onSessionDisconnected");
            sessionStateCallback.onSessionDisconnected();
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    private final void onSessionFinalizedWithTrace(SessionStateCallback sessionStateCallback) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#onSessionFinalized");
            sessionStateCallback.onSessionFinalized();
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00fd  */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw, reason: not valid java name */
    public CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i) throws Throwable {
        long jD;
        double d;
        CaptureRequest.Builder builderCreateCaptureRequest;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createCaptureRequest-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(i);
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
                        builderCreateCaptureRequest = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD = fh.d(str, " - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, 1, null, "%.3f ms", sbD));
                }
                return builderCreateCaptureRequest;
            } catch (Throwable th) {
                th = th;
                jD = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD2 = fh.d(str, " - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD2));
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            jD = dh.d(debug, jMo855nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sbD3 = fh.d(str, " - ");
                Timestamps timestamps3 = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, 1, null, "%.3f ms", sbD3));
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02dd A[Catch: all -> 0x00fc, TryCatch #9 {all -> 0x00fc, blocks: (B:25:0x00d9, B:27:0x00e6, B:29:0x00ec, B:34:0x010b, B:35:0x013d, B:38:0x0149, B:40:0x014f, B:48:0x0198, B:50:0x01ab, B:51:0x01ca, B:53:0x01d0, B:54:0x01de, B:55:0x01ea, B:57:0x01f0, B:59:0x0202, B:61:0x020f, B:62:0x0213, B:64:0x022d, B:66:0x0238, B:67:0x023b, B:69:0x023d, B:70:0x0240, B:41:0x0153, B:43:0x015b, B:45:0x0177, B:47:0x017f, B:79:0x027d, B:81:0x0281, B:83:0x0289, B:84:0x02a1, B:87:0x02b1, B:89:0x02b5, B:91:0x02b9, B:93:0x02bd, B:96:0x02c2, B:98:0x02c6, B:100:0x02ce, B:101:0x02d4, B:102:0x02d5, B:104:0x02dd, B:105:0x02f5), top: B:137:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x030e  */
    /* JADX WARN: Code duplicated, block: B:111:0x032f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0335  */
    /* JADX WARN: Code duplicated, block: B:115:0x0351  */
    /* JADX WARN: Code duplicated, block: B:117:0x0358  */
    /* JADX WARN: Code duplicated, block: B:118:0x035a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0374  */
    /* JADX WARN: Code duplicated, block: B:81:0x0281 A[Catch: all -> 0x00fc, TryCatch #9 {all -> 0x00fc, blocks: (B:25:0x00d9, B:27:0x00e6, B:29:0x00ec, B:34:0x010b, B:35:0x013d, B:38:0x0149, B:40:0x014f, B:48:0x0198, B:50:0x01ab, B:51:0x01ca, B:53:0x01d0, B:54:0x01de, B:55:0x01ea, B:57:0x01f0, B:59:0x0202, B:61:0x020f, B:62:0x0213, B:64:0x022d, B:66:0x0238, B:67:0x023b, B:69:0x023d, B:70:0x0240, B:41:0x0153, B:43:0x015b, B:45:0x0177, B:47:0x017f, B:79:0x027d, B:81:0x0281, B:83:0x0289, B:84:0x02a1, B:87:0x02b1, B:89:0x02b5, B:91:0x02b9, B:93:0x02bd, B:96:0x02c2, B:98:0x02c6, B:100:0x02ce, B:101:0x02d4, B:102:0x02d5, B:104:0x02dd, B:105:0x02f5), top: B:137:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0289 A[Catch: all -> 0x00fc, TryCatch #9 {all -> 0x00fc, blocks: (B:25:0x00d9, B:27:0x00e6, B:29:0x00ec, B:34:0x010b, B:35:0x013d, B:38:0x0149, B:40:0x014f, B:48:0x0198, B:50:0x01ab, B:51:0x01ca, B:53:0x01d0, B:54:0x01de, B:55:0x01ea, B:57:0x01f0, B:59:0x0202, B:61:0x020f, B:62:0x0213, B:64:0x022d, B:66:0x0238, B:67:0x023b, B:69:0x023d, B:70:0x0240, B:41:0x0153, B:43:0x015b, B:45:0x0177, B:47:0x017f, B:79:0x027d, B:81:0x0281, B:83:0x0289, B:84:0x02a1, B:87:0x02b1, B:89:0x02b5, B:91:0x02b9, B:93:0x02bd, B:96:0x02c2, B:98:0x02c6, B:100:0x02ce, B:101:0x02d4, B:102:0x02d5, B:104:0x02dd, B:105:0x02f5), top: B:137:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x02b1 A[Catch: all -> 0x00fc, TryCatch #9 {all -> 0x00fc, blocks: (B:25:0x00d9, B:27:0x00e6, B:29:0x00ec, B:34:0x010b, B:35:0x013d, B:38:0x0149, B:40:0x014f, B:48:0x0198, B:50:0x01ab, B:51:0x01ca, B:53:0x01d0, B:54:0x01de, B:55:0x01ea, B:57:0x01f0, B:59:0x0202, B:61:0x020f, B:62:0x0213, B:64:0x022d, B:66:0x0238, B:67:0x023b, B:69:0x023d, B:70:0x0240, B:41:0x0153, B:43:0x015b, B:45:0x0177, B:47:0x017f, B:79:0x027d, B:81:0x0281, B:83:0x0289, B:84:0x02a1, B:87:0x02b1, B:89:0x02b5, B:91:0x02b9, B:93:0x02bd, B:96:0x02c2, B:98:0x02c6, B:100:0x02ce, B:101:0x02d4, B:102:0x02d5, B:104:0x02dd, B:105:0x02f5), top: B:137:0x0047 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:104:0x02dd, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:113:0x0335, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:83:0x0289, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v0, types: [androidx.camera.camera2.pipe.core.Debug] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v18, types: [androidx.camera.camera2.pipe.core.Debug] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [int] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v8, types: [int] */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.camera.camera2.pipe.core.Debug] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(SessionConfigData sessionConfigData) throws Throwable {
        Locale locale;
        ?? r11;
        double d;
        long jD;
        boolean z;
        String str;
        ?? r21;
        boolean z2;
        boolean z3;
        j59 j59Var;
        ?? r12;
        ?? r5;
        long jD2;
        Log log;
        String str2 = "%.3f ms";
        String str3 = " - ";
        sessionConfigData.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(sessionConfigData.getStateCallback());
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback);
            j59 j59Var2 = j59.a;
        }
        ?? r13 = Debug.INSTANCE;
        String str4 = "CXCP#createCaptureSession-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = r13.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str4);
                String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    int sessionType = sessionConfigData.getSessionType();
                    List<OutputConfigurationWrapper> outputConfigurations = sessionConfigData.getOutputConfigurations();
                    d = 1000000.0d;
                    try {
                        try {
                            ArrayList arrayList = new ArrayList(kn1.q(outputConfigurations, 10));
                            Iterator it = outputConfigurations.iterator();
                            while (it.hasNext()) {
                                try {
                                    arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(x07.a(OutputConfiguration.class)));
                                } catch (Throwable th) {
                                    th = th;
                                    locale = null;
                                    r11 = 1;
                                    jD = dh.d(r13, jMo855nowvQl9yQU);
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        StringBuilder sbD = fh.d(str4, " - ");
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, "%.3f ms", sbD));
                                    }
                                    throw th;
                                }
                            }
                            try {
                                str4 = str4;
                                str2 = "%.3f ms";
                                str3 = " - ";
                                str = strMo734getCameraIdDz_R5H8;
                                ?? r22 = r13;
                                z2 = true;
                                r12 = 1;
                                try {
                                    SessionConfiguration sessionConfigurationNewSessionConfiguration = Api28Compat.newSessionConfiguration(sessionType, arrayList, sessionConfigData.getExecutor(), new AndroidCaptureSessionStateCallback(this, sessionConfigData.getStateCallback(), sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()));
                                    if (sessionConfigData.getInputConfiguration() != null) {
                                        if (Build.VERSION.SDK_INT >= 31) {
                                            Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, Api31Compat.newInputConfiguration(sessionConfigData.getInputConfiguration(), mo734getCameraIdDz_R5H8()));
                                        } else {
                                            Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, new InputConfiguration(((InputConfigData) qn1.k0(sessionConfigData.getInputConfiguration())).getWidth(), ((InputConfigData) qn1.k0(sessionConfigData.getInputConfiguration())).getHeight(), ((InputConfigData) qn1.k0(sessionConfigData.getInputConfiguration())).getFormat()));
                                        }
                                    }
                                    String strM838getSessionColorSpacedxVZaPA = sessionConfigData.m838getSessionColorSpacedxVZaPA();
                                    if (Build.VERSION.SDK_INT >= 34 && strM838getSessionColorSpacedxVZaPA != null) {
                                        ColorSpace.Named namedM201toColorSpaceNamedimpl = CameraColorSpace.m201toColorSpaceNamedimpl(strM838getSessionColorSpacedxVZaPA);
                                        if (namedM201toColorSpaceNamedimpl != null) {
                                            Api34Compat.setColorSpace(sessionConfigurationNewSessionConfiguration, namedM201toColorSpaceNamedimpl);
                                        } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Provided session color space " + strM838getSessionColorSpacedxVZaPA + " is not supported");
                                        }
                                    } else if (strM838getSessionColorSpacedxVZaPA != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to set session color space to " + strM838getSessionColorSpacedxVZaPA + ", at least API level 34 is required");
                                    }
                                    Debug debug = Debug.INSTANCE;
                                    try {
                                        Trace.beginSection("createCaptureRequest");
                                        CaptureRequest.Builder builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(sessionConfigData.getSessionTemplateId());
                                        Trace.endSection();
                                        builderCreateCaptureRequest.getClass();
                                        Set<CaptureRequest.Key<?>> sessionKeys = this.cameraMetadata.getSessionKeys();
                                        ArrayList arrayList2 = new ArrayList(kn1.q(sessionKeys, 10));
                                        Iterator it2 = sessionKeys.iterator();
                                        while (it2.hasNext()) {
                                            arrayList2.add(((CaptureRequest.Key) it2.next()).getName());
                                        }
                                        for (Map.Entry<?, Object> entry : sessionConfigData.getSessionParameters().entrySet()) {
                                            Object key = entry.getKey();
                                            Object value = entry.getValue();
                                            if ((key instanceof CaptureRequest.Key) && arrayList2.contains(((CaptureRequest.Key) key).getName())) {
                                                RequestsKt.writeParameter(builderCreateCaptureRequest, key, value);
                                            }
                                        }
                                        CaptureRequest captureRequestBuild = builderCreateCaptureRequest.build();
                                        captureRequestBuild.getClass();
                                        Api28Compat.setSessionParameters(sessionConfigurationNewSessionConfiguration, captureRequestBuild);
                                        Debug debug2 = Debug.INSTANCE;
                                        try {
                                            Trace.beginSection("Api28Compat.createCaptureSession");
                                            Api28Compat.createCaptureSession(this.cameraDevice, sessionConfigurationNewSessionConfiguration);
                                            j59 j59Var3 = j59.a;
                                            Trace.endSection();
                                            j59Var = j59.a;
                                            r5 = r22;
                                            z3 = false;
                                        } catch (Throwable th2) {
                                            Trace.endSection();
                                            throw th2;
                                        }
                                    } catch (Throwable th3) {
                                        Trace.endSection();
                                        throw th3;
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    r21 = r22;
                                    if (!(e instanceof CameraAccessException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                        }
                                        cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                                    } else {
                                        if (e instanceof IllegalArgumentException) {
                                        }
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                        }
                                        z3 = false;
                                        cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                        j59Var = null;
                                        r5 = r21;
                                        r12 = z2;
                                    }
                                    z3 = false;
                                    j59Var = null;
                                    r5 = r21;
                                    r12 = z2;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str2 = "%.3f ms";
                                str3 = " - ";
                                str4 = str4;
                                str = strMo734getCameraIdDz_R5H8;
                                r21 = r13;
                                z2 = true;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r13 = 1;
                            locale = null;
                            r11 = r13;
                            jD = dh.d(r13, jMo855nowvQl9yQU);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD2 = fh.d(str4, " - ");
                                Timestamps timestamps2 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, "%.3f ms", sbD2));
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        z = true;
                        str = strMo734getCameraIdDz_R5H8;
                        z2 = z;
                        r21 = r13;
                        if (!(e instanceof CameraAccessException)) {
                            if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z3 = false;
                                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            } else {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                                }
                            }
                            j59Var = null;
                            r5 = r21;
                            r12 = z2;
                            jD2 = dh.d(r5, jMo855nowvQl9yQU);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD3 = fh.d(str4, str3);
                                Timestamps timestamps3 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, r12, null, str2, sbD3));
                            }
                            if (j59Var == null) {
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                }
                                if (sessionStateCallback != null) {
                                    onSessionFinalizedWithTrace(sessionStateCallback);
                                    j59 j59Var4 = j59.a;
                                }
                            }
                            return j59Var != null ? r12 : z3;
                        }
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                        z3 = false;
                        j59Var = null;
                        r5 = r21;
                        r12 = z2;
                        jD2 = dh.d(r5, jMo855nowvQl9yQU);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD4 = fh.d(str4, str3);
                            Timestamps timestamps4 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, r12, null, str2, sbD4));
                        }
                        if (j59Var == null) {
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                            }
                            if (sessionStateCallback != null) {
                                onSessionFinalizedWithTrace(sessionStateCallback);
                                j59 j59Var5 = j59.a;
                            }
                        }
                        if (j59Var != null) {
                        }
                    }
                } catch (Exception e4) {
                    e = e4;
                    z = true;
                    d = 1000000.0d;
                } catch (Throwable th5) {
                    th = th5;
                    r13 = 1;
                    d = 1000000.0d;
                }
                jD2 = dh.d(r5, jMo855nowvQl9yQU);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD5 = fh.d(str4, str3);
                    Timestamps timestamps5 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, r12, null, str2, sbD5));
                }
                if (j59Var == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                        j59 j59Var6 = j59.a;
                    }
                }
                if (j59Var != null) {
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            locale = null;
            r11 = 1;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ee A[Catch: all -> 0x00d3, TryCatch #1 {all -> 0x00d3, blocks: (B:26:0x00c0, B:37:0x00ea, B:39:0x00ee, B:41:0x00f6, B:42:0x010e, B:45:0x011c, B:47:0x0120, B:49:0x0124, B:51:0x0128, B:54:0x012d, B:56:0x0131, B:58:0x0139, B:59:0x013f, B:60:0x0140, B:62:0x0148, B:63:0x0160), top: B:84:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00f6 A[Catch: all -> 0x00d3, TryCatch #1 {all -> 0x00d3, blocks: (B:26:0x00c0, B:37:0x00ea, B:39:0x00ee, B:41:0x00f6, B:42:0x010e, B:45:0x011c, B:47:0x0120, B:49:0x0124, B:51:0x0128, B:54:0x012d, B:56:0x0131, B:58:0x0139, B:59:0x013f, B:60:0x0140, B:62:0x0148, B:63:0x0160), top: B:84:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x011c A[Catch: all -> 0x00d3, TryCatch #1 {all -> 0x00d3, blocks: (B:26:0x00c0, B:37:0x00ea, B:39:0x00ee, B:41:0x00f6, B:42:0x010e, B:45:0x011c, B:47:0x0120, B:49:0x0124, B:51:0x0128, B:54:0x012d, B:56:0x0131, B:58:0x0139, B:59:0x013f, B:60:0x0140, B:62:0x0148, B:63:0x0160), top: B:84:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0148 A[Catch: all -> 0x00d3, TryCatch #1 {all -> 0x00d3, blocks: (B:26:0x00c0, B:37:0x00ea, B:39:0x00ee, B:41:0x00f6, B:42:0x010e, B:45:0x011c, B:47:0x0120, B:49:0x0124, B:51:0x0128, B:54:0x012d, B:56:0x0131, B:58:0x0139, B:59:0x013f, B:60:0x0140, B:62:0x0148, B:63:0x0160), top: B:84:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0177  */
    /* JADX WARN: Code duplicated, block: B:69:0x0198  */
    /* JADX WARN: Code duplicated, block: B:71:0x019e  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:75:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c1  */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x00f6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x0148, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x019e, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v8, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSessionByOutputConfigurations(List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        String str2;
        Locale locale;
        int i;
        double d;
        String str3;
        String str4;
        SessionStateCallback sessionStateCallback;
        String str5;
        boolean z;
        boolean z2;
        j59 j59Var;
        ?? r12;
        long jD;
        Log log;
        String str6 = "%.3f ms";
        list.getClass();
        stateCallback.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug = Debug.INSTANCE;
        String str7 = "CXCP#createCaptureSessionByOutputConfigurations-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str7);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            d = 1000000.0d;
            try {
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    try {
                        CameraDevice cameraDevice = this.cameraDevice;
                        List<? extends OutputConfigurationWrapper> list2 = list;
                        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            CameraDevice cameraDevice2 = cameraDevice;
                            arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(x07.a(OutputConfiguration.class)));
                            cameraDevice = cameraDevice2;
                        }
                        sessionStateCallback = sessionStateCallback2;
                        try {
                            str5 = "%.3f ms";
                            str3 = " - ";
                            str4 = str7;
                            i = 1;
                            r12 = 1;
                            z = true;
                            try {
                                try {
                                    Api24Compat.createCaptureSessionByOutputConfigurations(cameraDevice, arrayList, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                    j59Var = j59.a;
                                    z2 = false;
                                } catch (Exception e) {
                                    e = e;
                                    if (!(e instanceof CameraAccessException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                        }
                                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                    } else {
                                        if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                            }
                                            z2 = false;
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
                                        r12 = z;
                                    }
                                    z2 = false;
                                    j59Var = null;
                                    r12 = z;
                                }
                            } catch (Throwable th) {
                                th = th;
                                str6 = str5;
                                str = str3;
                                str2 = str4;
                                locale = null;
                                long jD2 = dh.d(debug, jMo855nowvQl9yQU);
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    StringBuilder sbD = fh.d(str2, str);
                                    Timestamps timestamps = Timestamps.INSTANCE;
                                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / d)}, i, locale, str6, sbD));
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str5 = "%.3f ms";
                            str3 = " - ";
                            str4 = str7;
                            z = true;
                            if (!(e instanceof CameraAccessException)) {
                                if (e instanceof IllegalArgumentException) {
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z2 = false;
                                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                j59Var = null;
                                r12 = z;
                                jD = dh.d(debug, jMo855nowvQl9yQU);
                                log = Log.INSTANCE;
                                if (log.getDEBUG_LOGGABLE()) {
                                    StringBuilder sbD2 = fh.d(str4, str3);
                                    Timestamps timestamps2 = Timestamps.INSTANCE;
                                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r12, null, str5, sbD2));
                                }
                                if (j59Var == null) {
                                    if (log.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                    }
                                    if (sessionStateCallback != null) {
                                        onSessionFinalizedWithTrace(sessionStateCallback);
                                    }
                                }
                                return j59Var != null ? r12 : z2;
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                            z2 = false;
                            j59Var = null;
                            r12 = z;
                            jD = dh.d(debug, jMo855nowvQl9yQU);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD3 = fh.d(str4, str3);
                                Timestamps timestamps3 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r12, null, str5, sbD3));
                            }
                            if (j59Var == null) {
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                }
                                if (sessionStateCallback != null) {
                                    onSessionFinalizedWithTrace(sessionStateCallback);
                                }
                            }
                            if (j59Var != null) {
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        sessionStateCallback = sessionStateCallback2;
                    }
                    jD = dh.d(debug, jMo855nowvQl9yQU);
                    log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD4 = fh.d(str4, str3);
                        Timestamps timestamps4 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r12, null, str5, sbD4));
                    }
                    if (j59Var == null) {
                        if (log.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                        }
                        if (sessionStateCallback != null) {
                            onSessionFinalizedWithTrace(sessionStateCallback);
                        }
                    }
                    if (j59Var != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    str3 = " - ";
                    str4 = str7;
                    i = 1;
                }
            } catch (Throwable th3) {
                th = th3;
                str = " - ";
                str2 = str7;
                locale = null;
                i = 1;
            }
        } catch (Throwable th4) {
            th = th4;
            str = " - ";
            str2 = str7;
            locale = null;
            i = 1;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e5 A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ed A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x010f A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x013b A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0167  */
    /* JADX WARN: Code duplicated, block: B:66:0x0188  */
    /* JADX WARN: Code duplicated, block: B:68:0x018e  */
    /* JADX WARN: Code duplicated, block: B:70:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:72:0x01af  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c4  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x00ed, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x013b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x018e, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createConstrainedHighSpeedCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        long j;
        String str;
        String str2;
        ?? r7;
        long jD;
        long j2;
        boolean z;
        String str3;
        String str4;
        String str5;
        boolean z2;
        SessionStateCallback sessionStateCallback;
        boolean z3;
        long j3;
        j59 j59Var;
        ?? r8;
        long jD2;
        Log log;
        boolean z4;
        String str6 = " - ";
        list.getClass();
        stateCallback.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug = Debug.INSTANCE;
        String str7 = "CXCP#createConstrainedHighSpeedCaptureSession-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str7);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                sessionStateCallback = sessionStateCallback2;
                try {
                    j2 = jMo855nowvQl9yQU;
                    try {
                        str5 = str7;
                        str3 = "%.3f ms";
                        str4 = " - ";
                        z2 = true;
                        try {
                            try {
                                this.cameraDevice.createConstrainedHighSpeedCaptureSession(list, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                j59Var = j59.a;
                                j3 = j2;
                                z4 = z2;
                            } catch (Exception e) {
                                e = e;
                                if (e instanceof CameraAccessException) {
                                    if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                        }
                                        z3 = false;
                                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                        j3 = j2;
                                        j59Var = null;
                                        r8 = z2;
                                    } else {
                                        if (!(e instanceof IllegalStateException)) {
                                            throw e;
                                        }
                                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                                        }
                                    }
                                    jD2 = dh.d(debug, j3);
                                    log = Log.INSTANCE;
                                    if (log.getDEBUG_LOGGABLE()) {
                                        StringBuilder sbD = fh.d(str5, str4);
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD));
                                    }
                                    if (j59Var == null) {
                                        if (log.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                        }
                                        if (sessionStateCallback != null) {
                                            onSessionFinalizedWithTrace(sessionStateCallback);
                                        }
                                    }
                                    return j59Var != null ? r8 : z3;
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                                j3 = j2;
                                j59Var = null;
                                z4 = z2;
                            }
                        } catch (Throwable th) {
                            th = th;
                            str2 = str5;
                            j = j2;
                            str = str3;
                            str6 = str4;
                            r7 = z2;
                            jD = dh.d(debug, j);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD2 = fh.d(str2, str6);
                                Timestamps timestamps2 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r7, null, str, sbD2));
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str3 = "%.3f ms";
                        str4 = " - ";
                        str5 = str7;
                        z2 = true;
                        if (e instanceof CameraAccessException) {
                            if (e instanceof IllegalArgumentException) {
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            z3 = false;
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            j3 = j2;
                            j59Var = null;
                            r8 = z2;
                            jD2 = dh.d(debug, j3);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD3 = fh.d(str5, str4);
                                Timestamps timestamps3 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD3));
                            }
                            if (j59Var == null) {
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                }
                                if (sessionStateCallback != null) {
                                    onSessionFinalizedWithTrace(sessionStateCallback);
                                }
                            }
                            if (j59Var != null) {
                            }
                        }
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                        j3 = j2;
                        j59Var = null;
                        z4 = z2;
                        z3 = false;
                        r8 = z4;
                        jD2 = dh.d(debug, j3);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD4 = fh.d(str5, str4);
                            Timestamps timestamps4 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD4));
                        }
                        if (j59Var == null) {
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                            }
                            if (sessionStateCallback != null) {
                                onSessionFinalizedWithTrace(sessionStateCallback);
                            }
                        }
                        if (j59Var != null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z = true;
                        str2 = str7;
                        j = j2;
                        str = "%.3f ms";
                        r7 = z;
                        jD = dh.d(debug, j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD5 = fh.d(str2, str6);
                            Timestamps timestamps5 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r7, null, str, sbD5));
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    j2 = jMo855nowvQl9yQU;
                } catch (Throwable th3) {
                    th = th3;
                    j2 = jMo855nowvQl9yQU;
                }
            } catch (Exception e4) {
                e = e4;
                j2 = jMo855nowvQl9yQU;
                str3 = "%.3f ms";
                str4 = " - ";
                str5 = str7;
                z2 = true;
                sessionStateCallback = sessionStateCallback2;
            } catch (Throwable th4) {
                th = th4;
                j2 = jMo855nowvQl9yQU;
                z = true;
            }
            z3 = false;
            r8 = z4;
            jD2 = dh.d(debug, j3);
            log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                StringBuilder sbD6 = fh.d(str5, str4);
                Timestamps timestamps6 = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD6));
            }
            if (j59Var == null) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                }
                if (sessionStateCallback != null) {
                    onSessionFinalizedWithTrace(sessionStateCallback);
                }
            }
            if (j59Var != null) {
            }
        } catch (Throwable th5) {
            th = th5;
            j = jMo855nowvQl9yQU;
            str = "%.3f ms";
            str2 = str7;
            r7 = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0146 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00dd, B:35:0x00ea, B:37:0x00f0, B:39:0x0100, B:44:0x0112, B:45:0x0119, B:46:0x011a, B:54:0x0142, B:56:0x0146, B:58:0x014e, B:59:0x0166, B:61:0x0175, B:63:0x0179, B:65:0x017d, B:67:0x0181, B:70:0x0186, B:72:0x018a, B:74:0x0192, B:75:0x0198, B:76:0x0199, B:78:0x01a1, B:79:0x01b9), top: B:107:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x014e A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00dd, B:35:0x00ea, B:37:0x00f0, B:39:0x0100, B:44:0x0112, B:45:0x0119, B:46:0x011a, B:54:0x0142, B:56:0x0146, B:58:0x014e, B:59:0x0166, B:61:0x0175, B:63:0x0179, B:65:0x017d, B:67:0x0181, B:70:0x0186, B:72:0x018a, B:74:0x0192, B:75:0x0198, B:76:0x0199, B:78:0x01a1, B:79:0x01b9), top: B:107:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0175 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00dd, B:35:0x00ea, B:37:0x00f0, B:39:0x0100, B:44:0x0112, B:45:0x0119, B:46:0x011a, B:54:0x0142, B:56:0x0146, B:58:0x014e, B:59:0x0166, B:61:0x0175, B:63:0x0179, B:65:0x017d, B:67:0x0181, B:70:0x0186, B:72:0x018a, B:74:0x0192, B:75:0x0198, B:76:0x0199, B:78:0x01a1, B:79:0x01b9), top: B:107:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0199 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00dd, B:35:0x00ea, B:37:0x00f0, B:39:0x0100, B:44:0x0112, B:45:0x0119, B:46:0x011a, B:54:0x0142, B:56:0x0146, B:58:0x014e, B:59:0x0166, B:61:0x0175, B:63:0x0179, B:65:0x017d, B:67:0x0181, B:70:0x0186, B:72:0x018a, B:74:0x0192, B:75:0x0198, B:76:0x0199, B:78:0x01a1, B:79:0x01b9), top: B:107:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01a1 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00dd, B:35:0x00ea, B:37:0x00f0, B:39:0x0100, B:44:0x0112, B:45:0x0119, B:46:0x011a, B:54:0x0142, B:56:0x0146, B:58:0x014e, B:59:0x0166, B:61:0x0175, B:63:0x0179, B:65:0x017d, B:67:0x0181, B:70:0x0186, B:72:0x018a, B:74:0x0192, B:75:0x0198, B:76:0x0199, B:78:0x01a1, B:79:0x01b9), top: B:107:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x0213  */
    /* JADX WARN: Code duplicated, block: B:91:0x0218  */
    /* JADX WARN: Code duplicated, block: B:92:0x021a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:98:0x0234  */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x014e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:78:0x01a1, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:87:0x01f7, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v0, types: [androidx.camera.camera2.pipe.core.Debug] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2, types: [int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v8, types: [int] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.camera.camera2.pipe.core.Debug] */
    /* JADX WARN: Type inference failed for: r2v21, types: [androidx.camera.camera2.pipe.core.Debug] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createExtensionSession(ExtensionSessionConfigData extensionSessionConfigData) throws Throwable {
        String str;
        String str2;
        ?? r2;
        String str3;
        Locale locale;
        ?? r11;
        double d;
        long jD;
        SessionStateCallback sessionStateCallback;
        String str4;
        String str5;
        ?? r23;
        String str6;
        boolean z;
        String str7;
        ?? r3;
        j59 j59Var;
        ?? r12;
        long jD2;
        Log log;
        extensionSessionConfigData.getClass();
        CameraExtensionSessionWrapper.StateCallback extensionStateCallback = extensionSessionConfigData.getExtensionStateCallback();
        if (extensionStateCallback == null) {
            ah.f("extensionStateCallback must be set to create Extension session");
            return false;
        }
        if (extensionSessionConfigData.getExtensionMode() == null) {
            ah.f("extensionMode must be set to create Extension session");
            return false;
        }
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(extensionStateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        ?? r13 = Debug.INSTANCE;
        String str8 = "CXCP#createExtensionSession-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = r13.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str8);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            d = 1000000.0d;
            try {
                try {
                    CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                    try {
                        try {
                            int iIntValue = extensionSessionConfigData.getExtensionMode().intValue();
                            List<OutputConfigurationWrapper> outputConfigurations = extensionSessionConfigData.getOutputConfigurations();
                            ArrayList arrayList = new ArrayList(kn1.q(outputConfigurations, 10));
                            Iterator it = outputConfigurations.iterator();
                            while (it.hasNext()) {
                                int i = iIntValue;
                                arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(x07.a(OutputConfiguration.class)));
                                iIntValue = i;
                            }
                            sessionStateCallback = sessionStateCallback2;
                            try {
                                try {
                                    str4 = "%.3f ms";
                                    str5 = " - ";
                                    str7 = strMo734getCameraIdDz_R5H8;
                                    str6 = str8;
                                    ?? r24 = r13;
                                    z = true;
                                    r12 = 1;
                                    try {
                                        ExtensionSessionConfiguration extensionSessionConfigurationNewExtensionSessionConfiguration = Api31Compat.newExtensionSessionConfiguration(iIntValue, arrayList, extensionSessionConfigData.getExecutor(), new AndroidExtensionSessionStateCallback(this, extensionStateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, extensionSessionConfigData.getExecutor()));
                                        if (extensionSessionConfigData.getPostviewOutputConfiguration() != null && Build.VERSION.SDK_INT >= 34) {
                                            OutputConfiguration outputConfiguration = (OutputConfiguration) extensionSessionConfigData.getPostviewOutputConfiguration().unwrapAs(x07.a(OutputConfiguration.class));
                                            if (outputConfiguration == null) {
                                                throw new IllegalStateException("Failed to unwrap Postview OutputConfiguration");
                                            }
                                            Api34Compat.setPostviewOutputConfiguration(extensionSessionConfigurationNewExtensionSessionConfiguration, outputConfiguration);
                                        }
                                        Api31Compat.createExtensionCaptureSession(this.cameraDevice, extensionSessionConfigurationNewExtensionSessionConfiguration);
                                        j59Var = j59.a;
                                        r3 = r24;
                                    } catch (Exception e) {
                                        e = e;
                                        r23 = r24;
                                        if (e instanceof CameraAccessException) {
                                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                            }
                                            cameraErrorListener.mo769onCameraError3M5Xam4(str7, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                        } else if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                            }
                                            cameraErrorListener.mo769onCameraError3M5Xam4(str7, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                        } else {
                                            if (!(e instanceof IllegalStateException)) {
                                                throw e;
                                            }
                                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                                            }
                                        }
                                        r3 = r23;
                                        j59Var = null;
                                        r12 = z;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    str4 = "%.3f ms";
                                    str5 = " - ";
                                    r23 = r13;
                                    str6 = str8;
                                    str7 = strMo734getCameraIdDz_R5H8;
                                    z = true;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                str4 = "%.3f ms";
                                str5 = " - ";
                                r23 = r13;
                                str6 = str8;
                                z = true;
                                str7 = strMo734getCameraIdDz_R5H8;
                                if (e instanceof CameraAccessException) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo769onCameraError3M5Xam4(str7, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                } else if (e instanceof IllegalArgumentException) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo769onCameraError3M5Xam4(str7, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                } else {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo769onCameraError3M5Xam4(str7, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                }
                                r3 = r23;
                                j59Var = null;
                                r12 = z;
                                jD2 = dh.d(r3, jMo855nowvQl9yQU);
                                log = Log.INSTANCE;
                                if (log.getDEBUG_LOGGABLE()) {
                                    StringBuilder sbD = fh.d(str6, str5);
                                    Timestamps timestamps = Timestamps.INSTANCE;
                                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r12, null, str4, sbD));
                                }
                                if (j59Var == null) {
                                    if (log.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to create extension session from " + this.cameraDevice + ". Finalizing previous session");
                                    }
                                    if (sessionStateCallback != null) {
                                        onSessionFinalizedWithTrace(sessionStateCallback);
                                    }
                                }
                                if (j59Var != null) {
                                    return r12;
                                }
                                return false;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r13 = 1;
                            str = "%.3f ms";
                            str2 = " - ";
                            str3 = str8;
                            r2 = r13;
                            locale = null;
                            r11 = r13;
                            jD = dh.d(r2, jMo855nowvQl9yQU);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD2 = fh.d(str3, str2);
                                Timestamps timestamps2 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, str, sbD2));
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        sessionStateCallback = sessionStateCallback2;
                    }
                    jD2 = dh.d(r3, jMo855nowvQl9yQU);
                    log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD3 = fh.d(str6, str5);
                        Timestamps timestamps3 = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r12, null, str4, sbD3));
                    }
                    if (j59Var == null) {
                        if (log.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to create extension session from " + this.cameraDevice + ". Finalizing previous session");
                        }
                        if (sessionStateCallback != null) {
                            onSessionFinalizedWithTrace(sessionStateCallback);
                        }
                    }
                    if (j59Var != null) {
                        return r12;
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                str = "%.3f ms";
                str2 = " - ";
                r2 = r13;
                str3 = str8;
                locale = null;
                r11 = 1;
                jD = dh.d(r2, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD4 = fh.d(str3, str2);
                    Timestamps timestamps4 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, str, sbD4));
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            str = "%.3f ms";
            str2 = " - ";
            r2 = r13;
            str3 = str8;
            locale = null;
            r11 = 1;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) throws Throwable {
        double d;
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
        totalCaptureResult.getClass();
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createReprocessCaptureRequest-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        builderCreateReprocessCaptureRequest = this.cameraDevice.createReprocessCaptureRequest(totalCaptureResult);
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
                        builderCreateReprocessCaptureRequest = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    long jD = dh.d(debug, jMo855nowvQl9yQU);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sbD = fh.d(str, " - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, 1, null, "%.3f ms", sbD));
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
            return builderCreateReprocessCaptureRequest;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ea A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:15:0x0087, B:35:0x00e6, B:37:0x00ea, B:39:0x00f2, B:40:0x0105, B:42:0x0114, B:44:0x0118, B:46:0x011c, B:48:0x0120, B:51:0x0125, B:53:0x0129, B:55:0x0131, B:56:0x0137, B:57:0x0138, B:59:0x0140, B:60:0x0153), top: B:81:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00f2 A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:15:0x0087, B:35:0x00e6, B:37:0x00ea, B:39:0x00f2, B:40:0x0105, B:42:0x0114, B:44:0x0118, B:46:0x011c, B:48:0x0120, B:51:0x0125, B:53:0x0129, B:55:0x0131, B:56:0x0137, B:57:0x0138, B:59:0x0140, B:60:0x0153), top: B:81:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0114 A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:15:0x0087, B:35:0x00e6, B:37:0x00ea, B:39:0x00f2, B:40:0x0105, B:42:0x0114, B:44:0x0118, B:46:0x011c, B:48:0x0120, B:51:0x0125, B:53:0x0129, B:55:0x0131, B:56:0x0137, B:57:0x0138, B:59:0x0140, B:60:0x0153), top: B:81:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0140 A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:15:0x0087, B:35:0x00e6, B:37:0x00ea, B:39:0x00f2, B:40:0x0105, B:42:0x0114, B:44:0x0118, B:46:0x011c, B:48:0x0120, B:51:0x0125, B:53:0x0129, B:55:0x0131, B:56:0x0137, B:57:0x0138, B:59:0x0140, B:60:0x0153), top: B:81:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x016c  */
    /* JADX WARN: Code duplicated, block: B:66:0x018d  */
    /* JADX WARN: Code duplicated, block: B:68:0x0193  */
    /* JADX WARN: Code duplicated, block: B:70:0x01af  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b6  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x00f2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x0140, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x0193, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x00a1: MOVE (r10 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:19:0x00a1 */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x00a3: MOVE (r4 I:??[long, double]) = (r20 I:??[long, double]), block:B:19:0x00a1 */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x00a5: MOVE (r11 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY]), block:B:19:0x00a1 */
    /* JADX WARN: Not initialized variable reg: 23, insn: 0x00a7: MOVE (r8 I:??[OBJECT, ARRAY]) = (r23 I:??[OBJECT, ARRAY]), block:B:19:0x00a1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSession(InputConfiguration inputConfiguration, List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        long j;
        String str;
        String str2;
        ?? r7;
        String str3;
        long j2;
        String str4;
        String str5;
        long j3;
        boolean z;
        String str6;
        String str7;
        String str8;
        boolean z2;
        SessionStateCallback sessionStateCallback;
        boolean z3;
        long j4;
        j59 j59Var;
        ?? r8;
        long jD;
        Log log;
        boolean z4;
        String str9 = "%.3f ms";
        String str10 = " - ";
        inputConfiguration.getClass();
        list.getClass();
        stateCallback.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug = Debug.INSTANCE;
        String str11 = "CXCP#createReprocessableCaptureSession-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str11);
                String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    sessionStateCallback = sessionStateCallback2;
                    try {
                        j3 = jMo855nowvQl9yQU;
                        try {
                            str8 = str11;
                            str6 = "%.3f ms";
                            str7 = " - ";
                            z2 = true;
                            try {
                                this.cameraDevice.createReprocessableCaptureSession(inputConfiguration, list, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                j59Var = j59.a;
                                j4 = j3;
                                z4 = z2;
                            } catch (Exception e) {
                                e = e;
                                if (e instanceof CameraAccessException) {
                                    if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                        }
                                        z3 = false;
                                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                        j4 = j3;
                                        j59Var = null;
                                        r8 = z2;
                                    } else {
                                        if (!(e instanceof IllegalStateException)) {
                                            throw e;
                                        }
                                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                            android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                                        }
                                    }
                                    jD = dh.d(debug, j4);
                                    log = Log.INSTANCE;
                                    if (log.getDEBUG_LOGGABLE()) {
                                        StringBuilder sbD = fh.d(str8, str7);
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r8, null, str6, sbD));
                                    }
                                    if (j59Var == null) {
                                        if (log.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                                        }
                                        if (sessionStateCallback != null) {
                                            onSessionFinalizedWithTrace(sessionStateCallback);
                                        }
                                    }
                                    return j59Var != null ? r8 : z3;
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                                j4 = j3;
                                j59Var = null;
                                z4 = z2;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str6 = "%.3f ms";
                            str7 = " - ";
                            str8 = str11;
                            z2 = true;
                            if (e instanceof CameraAccessException) {
                                if (e instanceof IllegalArgumentException) {
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z3 = false;
                                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                j4 = j3;
                                j59Var = null;
                                r8 = z2;
                                jD = dh.d(debug, j4);
                                log = Log.INSTANCE;
                                if (log.getDEBUG_LOGGABLE()) {
                                    StringBuilder sbD2 = fh.d(str8, str7);
                                    Timestamps timestamps2 = Timestamps.INSTANCE;
                                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r8, null, str6, sbD2));
                                }
                                if (j59Var == null) {
                                    if (log.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                                    }
                                    if (sessionStateCallback != null) {
                                        onSessionFinalizedWithTrace(sessionStateCallback);
                                    }
                                }
                                if (j59Var != null) {
                                }
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                            j4 = j3;
                            j59Var = null;
                            z4 = z2;
                            z3 = false;
                            r8 = z4;
                            jD = dh.d(debug, j4);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD3 = fh.d(str8, str7);
                                Timestamps timestamps3 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r8, null, str6, sbD3));
                            }
                            if (j59Var == null) {
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                                }
                                if (sessionStateCallback != null) {
                                    onSessionFinalizedWithTrace(sessionStateCallback);
                                }
                            }
                            if (j59Var != null) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            str2 = str11;
                            j = j3;
                            str = "%.3f ms";
                            r7 = z;
                            long jD2 = dh.d(debug, j);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD4 = fh.d(str2, str10);
                                Timestamps timestamps4 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r7, null, str, sbD4));
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        j3 = jMo855nowvQl9yQU;
                    } catch (Throwable th2) {
                        th = th2;
                        j3 = jMo855nowvQl9yQU;
                    }
                } catch (Exception e4) {
                    e = e4;
                    j3 = jMo855nowvQl9yQU;
                    str6 = "%.3f ms";
                    str7 = " - ";
                    str8 = str11;
                    z2 = true;
                    sessionStateCallback = sessionStateCallback2;
                } catch (Throwable th3) {
                    th = th3;
                    j3 = jMo855nowvQl9yQU;
                    z = true;
                }
                z3 = false;
                r8 = z4;
                jD = dh.d(debug, j4);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD5 = fh.d(str8, str7);
                    Timestamps timestamps5 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r8, null, str6, sbD5));
                }
                if (j59Var == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                    }
                }
                if (j59Var != null) {
                }
            } catch (Throwable th4) {
                th = th4;
                str2 = str3;
                j = j2;
                str = str4;
                str10 = str5;
                r7 = str9;
            }
        } catch (Throwable th5) {
            th = th5;
            j = jMo855nowvQl9yQU;
            str = "%.3f ms";
            str2 = str11;
            r7 = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x010f A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:26:0x00dd, B:37:0x010b, B:39:0x010f, B:41:0x0117, B:42:0x012f, B:45:0x013f, B:47:0x0143, B:49:0x0147, B:51:0x014b, B:54:0x0150, B:56:0x0154, B:58:0x015c, B:59:0x0162, B:60:0x0163, B:62:0x016b, B:63:0x0183), top: B:84:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0117 A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:26:0x00dd, B:37:0x010b, B:39:0x010f, B:41:0x0117, B:42:0x012f, B:45:0x013f, B:47:0x0143, B:49:0x0147, B:51:0x014b, B:54:0x0150, B:56:0x0154, B:58:0x015c, B:59:0x0162, B:60:0x0163, B:62:0x016b, B:63:0x0183), top: B:84:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x013f A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:26:0x00dd, B:37:0x010b, B:39:0x010f, B:41:0x0117, B:42:0x012f, B:45:0x013f, B:47:0x0143, B:49:0x0147, B:51:0x014b, B:54:0x0150, B:56:0x0154, B:58:0x015c, B:59:0x0162, B:60:0x0163, B:62:0x016b, B:63:0x0183), top: B:84:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x016b A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:26:0x00dd, B:37:0x010b, B:39:0x010f, B:41:0x0117, B:42:0x012f, B:45:0x013f, B:47:0x0143, B:49:0x0147, B:51:0x014b, B:54:0x0150, B:56:0x0154, B:58:0x015c, B:59:0x0162, B:60:0x0163, B:62:0x016b, B:63:0x0183), top: B:84:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x019c  */
    /* JADX WARN: Code duplicated, block: B:69:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x01df  */
    /* JADX WARN: Code duplicated, block: B:75:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:76:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x01fe  */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x0117, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x016b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x01c3, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x00f3: MOVE (r7 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:29:0x00f3 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x00f5: MOVE (r8 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:29:0x00f3 */
    /* JADX WARN: Type inference failed for: r10v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2, types: [int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfigData, List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        Debug debug;
        String str;
        ?? r11;
        Locale locale;
        double d;
        long jD;
        Debug debug2;
        ?? r12;
        String str2;
        String str3;
        ?? r13;
        SessionStateCallback sessionStateCallback;
        String str4;
        String str5;
        Debug debug3;
        String str6;
        boolean z;
        boolean z2;
        j59 j59Var;
        ?? r14;
        Debug debug4;
        long jD2;
        Log log;
        String str7 = "%.3f ms";
        String str8 = " - ";
        inputConfigData.getClass();
        list.getClass();
        stateCallback.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug5 = Debug.INSTANCE;
        String str9 = "CXCP#createReprocessableCaptureSessionByConfigurations-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug5.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str9);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            d = 1000000.0d;
            try {
                try {
                    CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                    try {
                        try {
                            CameraDevice cameraDevice = this.cameraDevice;
                            InputConfiguration inputConfiguration = new InputConfiguration(inputConfigData.getWidth(), inputConfigData.getHeight(), inputConfigData.getFormat());
                            List<? extends OutputConfigurationWrapper> list2 = list;
                            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                Iterator it2 = it;
                                arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(x07.a(OutputConfiguration.class)));
                                it = it2;
                            }
                            sessionStateCallback = sessionStateCallback2;
                            try {
                                str4 = "%.3f ms";
                                str5 = " - ";
                                str6 = str9;
                                debug3 = debug5;
                                z = true;
                                r14 = 1;
                                try {
                                    Api24Compat.createReprocessableCaptureSessionByConfigurations(cameraDevice, inputConfiguration, arrayList, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                    j59Var = j59.a;
                                    debug4 = debug3;
                                    z2 = false;
                                } catch (Exception e) {
                                    e = e;
                                    if (!(e instanceof CameraAccessException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                        }
                                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                    } else {
                                        if (!(e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                            }
                                            z2 = false;
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
                                        debug4 = debug3;
                                        r14 = z;
                                    }
                                    z2 = false;
                                    j59Var = null;
                                    debug4 = debug3;
                                    r14 = z;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str4 = "%.3f ms";
                                str5 = " - ";
                                debug3 = debug5;
                                str6 = str9;
                                z = true;
                                if (!(e instanceof CameraAccessException)) {
                                    if (e instanceof IllegalArgumentException) {
                                    }
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    z2 = false;
                                    cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                    j59Var = null;
                                    debug4 = debug3;
                                    r14 = z;
                                    jD2 = dh.d(debug4, jMo855nowvQl9yQU);
                                    log = Log.INSTANCE;
                                    if (log.getDEBUG_LOGGABLE()) {
                                        StringBuilder sbD = fh.d(str6, str5);
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r14, null, str4, sbD));
                                    }
                                    if (j59Var == null) {
                                        if (log.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                                        }
                                        if (sessionStateCallback != null) {
                                            onSessionFinalizedWithTrace(sessionStateCallback);
                                        }
                                    }
                                    return j59Var != null ? r14 : z2;
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                z2 = false;
                                j59Var = null;
                                debug4 = debug3;
                                r14 = z;
                                jD2 = dh.d(debug4, jMo855nowvQl9yQU);
                                log = Log.INSTANCE;
                                if (log.getDEBUG_LOGGABLE()) {
                                    StringBuilder sbD2 = fh.d(str6, str5);
                                    Timestamps timestamps2 = Timestamps.INSTANCE;
                                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r14, null, str4, sbD2));
                                }
                                if (j59Var == null) {
                                    if (log.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                                    }
                                    if (sessionStateCallback != null) {
                                        onSessionFinalizedWithTrace(sessionStateCallback);
                                    }
                                }
                                if (j59Var != null) {
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            sessionStateCallback = sessionStateCallback2;
                        }
                        jD2 = dh.d(debug4, jMo855nowvQl9yQU);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD3 = fh.d(str6, str5);
                            Timestamps timestamps3 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r14, null, str4, sbD3));
                        }
                        if (j59Var == null) {
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                            }
                            if (sessionStateCallback != null) {
                                onSessionFinalizedWithTrace(sessionStateCallback);
                            }
                        }
                        if (j59Var != null) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        r13 = 1;
                        str = str9;
                        debug2 = debug5;
                        r12 = r13;
                        locale = null;
                        debug = debug2;
                        r11 = r12;
                        jD = dh.d(debug, jMo855nowvQl9yQU);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD4 = fh.d(str, str8);
                            Timestamps timestamps4 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, str7, sbD4));
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    str7 = str2;
                    str8 = str3;
                    r13 = debug5;
                }
            } catch (Throwable th3) {
                th = th3;
                debug2 = debug5;
                str = str9;
                r12 = 1;
                locale = null;
                debug = debug2;
                r11 = r12;
                jD = dh.d(debug, jMo855nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sbD5 = fh.d(str, str8);
                    Timestamps timestamps5 = Timestamps.INSTANCE;
                    android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / d)}, r11, locale, str7, sbD5));
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            debug = debug5;
            str = str9;
            r11 = 1;
            locale = null;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraAudioRestriction-_b5Q8KE, reason: not valid java name */
    public int mo733getCameraAudioRestriction_b5Q8KE() {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("getCameraAudioRestriction");
            return AudioRestrictionMode.m140constructorimpl(Api30Compat.getCameraAudioRestriction(this.cameraDevice));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String mo734getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU, reason: not valid java name */
    public void mo735onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("setCameraAudioRestriction");
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                Api30Compat.setCameraAudioRestriction(this.cameraDevice, i);
                j59 j59Var = j59.a;
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
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosed() {
        if (!this.closed.b()) {
            ah.f("Check failed.");
            return;
        }
        SessionStateCallback sessionStateCallbackB = this._lastStateCallback.b(null);
        if (sessionStateCallbackB != null) {
            onSessionFinalizedWithTrace(sessionStateCallbackB);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosing() {
        SessionStateCallback sessionStateCallback;
        if (!this.closed.a() || (sessionStateCallback = this._lastStateCallback.b) == null) {
            return;
        }
        onSessionDisconnectedWithTrace(sessionStateCallback);
    }

    public String toString() {
        return "AndroidCameraDevice(camera=" + ((Object) CameraId.m357toStringimpl(mo734getCameraIdDz_R5H8())) + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (!vh.g(ne4Var, CameraDevice.class)) {
            return null;
        }
        T t = (T) this.cameraDevice;
        t.getClass();
        return t;
    }

    public /* synthetic */ AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads, jh2 jh2Var) {
        this(cameraMetadata, cameraDevice, str, cameraErrorListener, captureSessionListener, threads);
    }

    public /* synthetic */ AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads, int i, jh2 jh2Var) {
        this(cameraMetadata, cameraDevice, str, cameraErrorListener, (i & 16) != 0 ? null : captureSessionListener, threads, null);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e5 A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ed A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x010f A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x013b A[Catch: all -> 0x009b, TryCatch #7 {all -> 0x009b, blocks: (B:15:0x0084, B:35:0x00e1, B:37:0x00e5, B:39:0x00ed, B:40:0x0100, B:42:0x010f, B:44:0x0113, B:46:0x0117, B:48:0x011b, B:51:0x0120, B:53:0x0124, B:55:0x012c, B:56:0x0132, B:57:0x0133, B:59:0x013b, B:60:0x014e), top: B:83:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0167  */
    /* JADX WARN: Code duplicated, block: B:66:0x0188  */
    /* JADX WARN: Code duplicated, block: B:68:0x018e  */
    /* JADX WARN: Code duplicated, block: B:70:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:72:0x01af  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c4  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x00ed, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x013b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x018e, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        long j;
        String str;
        String str2;
        ?? r7;
        long jD;
        long j2;
        boolean z;
        String str3;
        String str4;
        String str5;
        boolean z2;
        SessionStateCallback sessionStateCallback;
        boolean z3;
        long j3;
        j59 j59Var;
        ?? r8;
        long jD2;
        Log log;
        boolean z4;
        String str6 = " - ";
        list.getClass();
        stateCallback.getClass();
        b36<Boolean, SessionStateCallback> b36VarCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = b36VarCheckAndSetStateCallback.b.booleanValue();
        SessionStateCallback sessionStateCallback2 = b36VarCheckAndSetStateCallback.c;
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug = Debug.INSTANCE;
        String str7 = "CXCP#createCaptureSession-" + mo734getCameraIdDz_R5H8();
        long jMo855nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo855nowvQl9yQU();
        try {
            Trace.beginSection(str7);
            String strMo734getCameraIdDz_R5H8 = mo734getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                sessionStateCallback = sessionStateCallback2;
                try {
                    j2 = jMo855nowvQl9yQU;
                    try {
                        str5 = str7;
                        str3 = "%.3f ms";
                        str4 = " - ";
                        z2 = true;
                        try {
                            try {
                                this.cameraDevice.createCaptureSession(list, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                j59Var = j59.a;
                                j3 = j2;
                                z4 = z2;
                            } catch (Exception e) {
                                e = e;
                                if (e instanceof CameraAccessException) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                                } else {
                                    if ((e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                        if (e instanceof IllegalStateException) {
                                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                                android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                                            }
                                        } else {
                                            throw e;
                                        }
                                    } else {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                                        }
                                        z3 = false;
                                        cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                        j3 = j2;
                                        j59Var = null;
                                        r8 = z2;
                                    }
                                    jD2 = dh.d(debug, j3);
                                    log = Log.INSTANCE;
                                    if (log.getDEBUG_LOGGABLE()) {
                                        StringBuilder sbD = fh.d(str5, str4);
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD));
                                    }
                                    if (j59Var == null) {
                                        if (log.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                        }
                                        if (sessionStateCallback != null) {
                                            onSessionFinalizedWithTrace(sessionStateCallback);
                                        }
                                    }
                                    return j59Var != null ? r8 : z3;
                                }
                                j3 = j2;
                                j59Var = null;
                                z4 = z2;
                            }
                        } catch (Throwable th) {
                            th = th;
                            str2 = str5;
                            j = j2;
                            str = str3;
                            str6 = str4;
                            r7 = z2;
                            jD = dh.d(debug, j);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD2 = fh.d(str2, str6);
                                Timestamps timestamps2 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r7, null, str, sbD2));
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str3 = "%.3f ms";
                        str4 = " - ";
                        str5 = str7;
                        z2 = true;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z2);
                        } else {
                            if (e instanceof IllegalArgumentException) {
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            z3 = false;
                            cameraErrorListener.mo769onCameraError3M5Xam4(strMo734getCameraIdDz_R5H8, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            j3 = j2;
                            j59Var = null;
                            r8 = z2;
                            jD2 = dh.d(debug, j3);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                StringBuilder sbD3 = fh.d(str5, str4);
                                Timestamps timestamps3 = Timestamps.INSTANCE;
                                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD3));
                            }
                            if (j59Var == null) {
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                                }
                                if (sessionStateCallback != null) {
                                    onSessionFinalizedWithTrace(sessionStateCallback);
                                }
                            }
                            if (j59Var != null) {
                            }
                        }
                        j3 = j2;
                        j59Var = null;
                        z4 = z2;
                        z3 = false;
                        r8 = z4;
                        jD2 = dh.d(debug, j3);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD4 = fh.d(str5, str4);
                            Timestamps timestamps4 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD4));
                        }
                        if (j59Var == null) {
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                            }
                            if (sessionStateCallback != null) {
                                onSessionFinalizedWithTrace(sessionStateCallback);
                            }
                        }
                        if (j59Var != null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z = true;
                        str2 = str7;
                        j = j2;
                        str = "%.3f ms";
                        r7 = z;
                        jD = dh.d(debug, j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sbD5 = fh.d(str2, str6);
                            Timestamps timestamps5 = Timestamps.INSTANCE;
                            android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD / 1000000.0d)}, r7, null, str, sbD5));
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    j2 = jMo855nowvQl9yQU;
                } catch (Throwable th3) {
                    th = th3;
                    j2 = jMo855nowvQl9yQU;
                }
            } catch (Exception e4) {
                e = e4;
                j2 = jMo855nowvQl9yQU;
                str3 = "%.3f ms";
                str4 = " - ";
                str5 = str7;
                z2 = true;
                sessionStateCallback = sessionStateCallback2;
            } catch (Throwable th4) {
                th = th4;
                j2 = jMo855nowvQl9yQU;
                z = true;
            }
            z3 = false;
            r8 = z4;
            jD2 = dh.d(debug, j3);
            log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                StringBuilder sbD6 = fh.d(str5, str4);
                Timestamps timestamps6 = Timestamps.INSTANCE;
                android.util.Log.d(Log.TAG, eh.c(new Object[]{Double.valueOf(jD2 / 1000000.0d)}, r8, null, str3, sbD6));
            }
            if (j59Var == null) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                }
                if (sessionStateCallback != null) {
                    onSessionFinalizedWithTrace(sessionStateCallback);
                }
            }
            if (j59Var != null) {
            }
        } catch (Throwable th5) {
            th = th5;
            j = jMo855nowvQl9yQU;
            str = "%.3f ms";
            str2 = str7;
            r7 = 1;
        }
    }
}
