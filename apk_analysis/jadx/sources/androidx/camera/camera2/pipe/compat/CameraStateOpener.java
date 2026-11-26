package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.r57;
import defpackage.rm9;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateOpener {

    @Deprecated
    public static final long CAMERA_OPEN_CANCEL_TIMEOUT_MS = 2000;

    @Deprecated
    public static final long CAMERA_OPEN_TIMEOUT_MS = 3000;
    private static final Companion Companion = new Companion(null);
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final Camera2Quirks camera2Quirks;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private xp1<j59> cameraOpenCancelled;
    private final CameraOpener cameraOpener;
    private final Threads threads;
    private final TimeSource timeSource;

    public CameraStateOpener(CameraOpener cameraOpener, Camera2MetadataProvider camera2MetadataProvider, CameraErrorListener cameraErrorListener, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        cameraOpener.getClass();
        camera2MetadataProvider.getClass();
        cameraErrorListener.getClass();
        camera2Quirks.getClass();
        timeSource.getClass();
        threads.getClass();
        this.cameraOpener = cameraOpener;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.cameraErrorListener = cameraErrorListener;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
        this.cameraOpenCancelled = new yp1();
    }

    public final void cancelOpen$camera_camera2_pipe() {
        this.cameraOpenCancelled.f(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX INFO: renamed from: tryOpenCamera-7pD7j80$camera_camera2_pipe, reason: not valid java name */
    public final Object m803tryOpenCamera7pD7j80$camera_camera2_pipe(String str, int i, long j, Camera2DeviceCloser camera2DeviceCloser, AudioRestrictionController audioRestrictionController, e02<? super OpenCameraResult> e02Var) {
        CameraStateOpener$tryOpenCamera$1 cameraStateOpener$tryOpenCamera$1;
        Camera2DeviceCloser camera2DeviceCloser2;
        AudioRestrictionController audioRestrictionController2;
        long j2;
        int i2;
        String str2;
        if (e02Var instanceof CameraStateOpener$tryOpenCamera$1) {
            cameraStateOpener$tryOpenCamera$1 = (CameraStateOpener$tryOpenCamera$1) e02Var;
            int i3 = cameraStateOpener$tryOpenCamera$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cameraStateOpener$tryOpenCamera$1.label = i3 - Integer.MIN_VALUE;
            } else {
                cameraStateOpener$tryOpenCamera$1 = new CameraStateOpener$tryOpenCamera$1(this, e02Var);
            }
        } else {
            cameraStateOpener$tryOpenCamera$1 = new CameraStateOpener$tryOpenCamera$1(this, e02Var);
        }
        Object objMo780getCameraMetadata0r8Bogc = cameraStateOpener$tryOpenCamera$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = cameraStateOpener$tryOpenCamera$1.label;
        if (i4 == 0) {
            r57.b(objMo780getCameraMetadata0r8Bogc);
            Camera2MetadataProvider camera2MetadataProvider = this.camera2MetadataProvider;
            cameraStateOpener$tryOpenCamera$1.L$0 = str;
            cameraStateOpener$tryOpenCamera$1.L$1 = camera2DeviceCloser;
            cameraStateOpener$tryOpenCamera$1.L$2 = audioRestrictionController;
            cameraStateOpener$tryOpenCamera$1.I$0 = i;
            cameraStateOpener$tryOpenCamera$1.J$0 = j;
            cameraStateOpener$tryOpenCamera$1.label = 1;
            objMo780getCameraMetadata0r8Bogc = camera2MetadataProvider.mo780getCameraMetadata0r8Bogc(str, cameraStateOpener$tryOpenCamera$1);
            if (objMo780getCameraMetadata0r8Bogc != a32Var) {
                camera2DeviceCloser2 = camera2DeviceCloser;
                audioRestrictionController2 = audioRestrictionController;
                j2 = j;
                i2 = i;
                str2 = str;
            }
        }
        if (i4 != 1) {
            if (i4 == 2) {
                r57.b(objMo780getCameraMetadata0r8Bogc);
                return objMo780getCameraMetadata0r8Bogc;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        long j3 = cameraStateOpener$tryOpenCamera$1.J$0;
        int i5 = cameraStateOpener$tryOpenCamera$1.I$0;
        AudioRestrictionController audioRestrictionController3 = (AudioRestrictionController) cameraStateOpener$tryOpenCamera$1.L$2;
        Camera2DeviceCloser camera2DeviceCloser3 = (Camera2DeviceCloser) cameraStateOpener$tryOpenCamera$1.L$1;
        String str3 = (String) cameraStateOpener$tryOpenCamera$1.L$0;
        r57.b(objMo780getCameraMetadata0r8Bogc);
        i2 = i5;
        audioRestrictionController2 = audioRestrictionController3;
        camera2DeviceCloser2 = camera2DeviceCloser3;
        j2 = j3;
        str2 = str3;
        CameraMetadata cameraMetadata = (CameraMetadata) objMo780getCameraMetadata0r8Bogc;
        TimeSource timeSource = this.timeSource;
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        Camera2Quirks camera2Quirks = this.camera2Quirks;
        Threads threads = this.threads;
        CameraPipe.CameraInteropConfig cameraInteropConfig = this.cameraInteropConfig;
        CameraDevice.StateCallback cameraDeviceStateCallback = cameraInteropConfig != null ? cameraInteropConfig.getCameraDeviceStateCallback() : null;
        CameraPipe.CameraInteropConfig cameraInteropConfig2 = this.cameraInteropConfig;
        CameraStateOpener$tryOpenCamera$2 cameraStateOpener$tryOpenCamera$2 = new CameraStateOpener$tryOpenCamera$2(this, str2, new AndroidCameraState(str2, cameraMetadata, i2, j2, timeSource, cameraErrorListener, camera2DeviceCloser2, camera2Quirks, threads, audioRestrictionController2, cameraDeviceStateCallback, cameraInteropConfig2 != null ? cameraInteropConfig2.getCameraCaptureSessionListener() : null, null), null);
        cameraStateOpener$tryOpenCamera$1.L$0 = null;
        cameraStateOpener$tryOpenCamera$1.L$1 = null;
        cameraStateOpener$tryOpenCamera$1.L$2 = null;
        cameraStateOpener$tryOpenCamera$1.label = 2;
        Object objC = rm9.c(cameraStateOpener$tryOpenCamera$2, cameraStateOpener$tryOpenCamera$1);
        return objC == a32Var ? a32Var : objC;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
