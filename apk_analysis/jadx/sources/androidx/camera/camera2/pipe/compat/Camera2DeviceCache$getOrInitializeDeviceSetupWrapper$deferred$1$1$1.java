package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1", f = "Camera2DeviceCache.kt", l = {}, m = "invokeSuspend", v = 1)
public final class Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1 extends pg8 implements bm3<y22, e02<? super Camera2DeviceSetup>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1(String str, Camera2DeviceCache camera2DeviceCache, e02<? super Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1> e02Var) {
        super(2, e02Var);
        this.$cameraId = str;
        this.this$0 = camera2DeviceCache;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1(this.$cameraId, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Camera2DeviceSetup> e02Var) {
        return ((Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        Boolean boolValueOf;
        CameraDevice.CameraDeviceSetup cameraDeviceSetup;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        String str = this.$cameraId;
        CameraErrorListener cameraErrorListener = this.this$0.cameraErrorListener;
        try {
            boolValueOf = Boolean.valueOf(((CameraManager) this.this$0.cameraManager.get()).isCameraDeviceSetupSupported(this.$cameraId));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo769onCameraError3M5Xam4(str, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                }
            }
            boolValueOf = null;
        }
        if (!aa4.e(boolValueOf, Boolean.TRUE)) {
            return null;
        }
        Log log = Log.INSTANCE;
        String str2 = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Initializing CameraDeviceSetup for " + ((Object) CameraId.m357toStringimpl(str2)));
        }
        String str3 = this.$cameraId;
        CameraErrorListener cameraErrorListener2 = this.this$0.cameraErrorListener;
        try {
            cameraDeviceSetup = ((CameraManager) this.this$0.cameraManager.get()).getCameraDeviceSetup(this.$cameraId);
        } catch (Exception e2) {
            if (e2 instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Camera encountered an error: " + e2.getMessage());
                }
                cameraErrorListener2.mo769onCameraError3M5Xam4(str3, CameraError.Companion.m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e2), true);
            } else if ((e2 instanceof IllegalArgumentException) || (e2 instanceof SecurityException) || (e2 instanceof UnsupportedOperationException) || (e2 instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to execute call: Unexpected exception: " + e2.getMessage());
                }
                cameraErrorListener2.mo769onCameraError3M5Xam4(str3, CameraError.Companion.m296getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e2 instanceof IllegalStateException)) {
                    throw e2;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Failed to execute call: Camera may be closed");
                }
            }
            cameraDeviceSetup = null;
        }
        if (cameraDeviceSetup != null) {
            return new Camera2DeviceSetup(cameraDeviceSetup, this.$cameraId, this.this$0.cameraErrorListener, null);
        }
        return null;
    }
}
