package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.UltraWideFlashCaptureUnderexposureQuirk;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.nl3;
import defpackage.r57;
import defpackage.ze;

/* JADX INFO: loaded from: classes.dex */
public final class UseTorchAsFlashImpl implements UseTorchAsFlash {
    private final CameraDevices cameraDevices;
    private final CameraQuirks cameraQuirks;
    private final cl4 hasUwCameraUnderexposedFlashCaptureQuirk$delegate;
    private final IntrinsicZoomCalculator intrinsicZoomCalculator;

    /* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl$shouldUseTorchAsFlash$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl", f = "UseTorchAsFlash.kt", l = {113}, m = "shouldUseTorchAsFlash", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseTorchAsFlashImpl.this.shouldUseTorchAsFlash(null, this);
        }
    }

    public UseTorchAsFlashImpl(CameraQuirks cameraQuirks, CameraDevices cameraDevices, IntrinsicZoomCalculator intrinsicZoomCalculator) {
        cameraQuirks.getClass();
        cameraDevices.getClass();
        intrinsicZoomCalculator.getClass();
        this.cameraQuirks = cameraQuirks;
        this.cameraDevices = cameraDevices;
        this.intrinsicZoomCalculator = intrinsicZoomCalculator;
        this.hasUwCameraUnderexposedFlashCaptureQuirk$delegate = new fh8(new ze(this, 6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasUwCameraUnderexposedFlashCaptureQuirk() {
        return ((Boolean) this.hasUwCameraUnderexposedFlashCaptureQuirk$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0(UseTorchAsFlashImpl useTorchAsFlashImpl) {
        return useTorchAsFlashImpl.cameraQuirks.getQuirks().contains(UltraWideFlashCaptureUnderexposureQuirk.class);
    }

    private final Boolean isUltraWideCamera(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID;
        key.getClass();
        String str = (String) frameMetadata.get(key);
        if (str == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "isUltraWideCamera: could not get active physical camera ID to identify if it's ultra wide camera.");
            }
            return null;
        }
        CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(this.cameraDevices, CameraId.m352constructorimpl(str), null, 2, null);
        if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "isUltraWideCamera: failed to get CameraMetadata for ".concat(str));
            }
            return null;
        }
        Float fCalculateIntrinsicZoomRatio = this.intrinsicZoomCalculator.calculateIntrinsicZoomRatio(cameraMetadataM237awaitCameraMetadataFpsL5FU$default);
        if (fCalculateIntrinsicZoomRatio == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "isUltraWideCamera: could not calculate intrinsic zoom ratio.");
            }
            return null;
        }
        float fFloatValue = fCalculateIntrinsicZoomRatio.floatValue();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "isUltraWideCamera: cameraId = " + str + ", intrinsicZoomRatio = " + fFloatValue);
        }
        return Boolean.valueOf(fFloatValue < 1.0f);
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public boolean shouldDisableAePrecapture() {
        return !getHasUwCameraUnderexposedFlashCaptureQuirk();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public Object shouldUseTorchAsFlash(nl3<? super e02<? super FrameMetadata>, ? extends Object> nl3Var, e02<? super Boolean> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objInvoke);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "shouldUseTorchAsFlash: hasUwCameraUnderexposedFlashCaptureQuirk = " + getHasUwCameraUnderexposedFlashCaptureQuirk());
            }
            if (!getHasUwCameraUnderexposedFlashCaptureQuirk()) {
                return Boolean.TRUE;
            }
            if (Build.VERSION.SDK_INT < 29) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "shouldUseTorchAsFlash: API level is too low to know if it's ultra wide camera, defaulting to workaround for safety.");
                }
                return Boolean.TRUE;
            }
            anonymousClass1.label = 1;
            objInvoke = nl3Var.invoke(anonymousClass1);
            if (objInvoke == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objInvoke);
        }
        FrameMetadata frameMetadata = (FrameMetadata) objInvoke;
        if (frameMetadata != null) {
            Boolean boolIsUltraWideCamera = isUltraWideCamera(frameMetadata);
            return Boolean.valueOf(boolIsUltraWideCamera != null ? boolIsUltraWideCamera.booleanValue() : true);
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "shouldUseTorchAsFlash: frameMetadata is null, defaulting to workaround for safety.");
        }
        return Boolean.TRUE;
    }
}
