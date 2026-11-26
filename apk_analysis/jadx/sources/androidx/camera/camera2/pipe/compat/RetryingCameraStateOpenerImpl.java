package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.bv0;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class RetryingCameraStateOpenerImpl implements RetryingCameraStateOpener {
    public static final Companion Companion = new Companion(null);
    private final AudioRestrictionController audioRestrictionController;
    private final CameraAvailabilityMonitor cameraAvailabilityMonitor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraPipe.CameraInteropConfig cameraInteropConfig;
    private final CameraStateOpener cameraStateOpener;
    private final DevicePolicyManagerWrapper devicePolicyManager;
    private final Threads threads;
    private final TimeSource timeSource;

    public RetryingCameraStateOpenerImpl(CameraStateOpener cameraStateOpener, CameraErrorListener cameraErrorListener, CameraAvailabilityMonitor cameraAvailabilityMonitor, TimeSource timeSource, DevicePolicyManagerWrapper devicePolicyManagerWrapper, AudioRestrictionController audioRestrictionController, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        cameraStateOpener.getClass();
        cameraErrorListener.getClass();
        cameraAvailabilityMonitor.getClass();
        timeSource.getClass();
        devicePolicyManagerWrapper.getClass();
        audioRestrictionController.getClass();
        threads.getClass();
        this.cameraStateOpener = cameraStateOpener;
        this.cameraErrorListener = cameraErrorListener;
        this.cameraAvailabilityMonitor = cameraAvailabilityMonitor;
        this.timeSource = timeSource;
        this.devicePolicyManager = devicePolicyManagerWrapper;
        this.audioRestrictionController = audioRestrictionController;
        this.cameraInteropConfig = cameraInteropConfig;
        this.threads = threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    public void cancelOpen() {
        this.cameraStateOpener.cancelOpen$camera_camera2_pipe();
    }

    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openAndAwaitCameraWithRetry-0r8Bogc */
    public AwaitOpenCameraResult mo826openAndAwaitCameraWithRetry0r8Bogc(String str, Camera2DeviceCloser camera2DeviceCloser) {
        str.getClass();
        camera2DeviceCloser.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + "#openAndAwaitCameraWithRetry(" + ((Object) CameraId.m357toStringimpl(str)) + ')');
        }
        return (AwaitOpenCameraResult) bv0.a(this.threads.getBlockingDispatcher(), new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(this, str, camera2DeviceCloser, null));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0107  */
    /* JADX WARN: Code duplicated, block: B:39:0x012d A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0133 A[Catch: all -> 0x005c, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x013b A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0145 A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0167 A[Catch: all -> 0x005c, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0170  */
    /* JADX WARN: Code duplicated, block: B:53:0x017f A[Catch: all -> 0x005c, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0188  */
    /* JADX WARN: Code duplicated, block: B:58:0x019a A[DONT_INVERT, PHI: r17 r32
      0x019a: PHI (r17v1 a32) = (r17v2 a32), (r17v3 a32) binds: [B:57:0x018d, B:54:0x0186] A[DONT_GENERATE, DONT_INLINE]
      0x019a: PHI (r32v2 androidx.camera.camera2.pipe.compat.OpenCameraResult) = 
      (r32v3 androidx.camera.camera2.pipe.compat.OpenCameraResult)
      (r32v4 androidx.camera.camera2.pipe.compat.OpenCameraResult)
     binds: [B:57:0x018d, B:54:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x019c A[Catch: all -> 0x005c, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x01a4 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:64:0x022a  */
    /* JADX WARN: Code duplicated, block: B:70:0x0260 A[Catch: all -> 0x005c, TryCatch #1 {all -> 0x005c, blocks: (B:14:0x004c, B:68:0x0258, B:70:0x0260, B:72:0x0268, B:35:0x0113, B:39:0x012d, B:41:0x0133, B:43:0x013b, B:46:0x0145, B:48:0x0167, B:51:0x0173, B:53:0x017f, B:57:0x018d, B:59:0x019c, B:61:0x01a4, B:65:0x022c, B:22:0x0080), top: B:82:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0255 -> B:16:0x0054). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener
    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg */
    public java.lang.Object mo827openCameraWithRetryaeCOTgg(java.lang.String r32, androidx.camera.camera2.pipe.compat.Camera2DeviceCloser r33, defpackage.nl3<? super defpackage.j59, java.lang.Boolean> r34, defpackage.e02<? super androidx.camera.camera2.pipe.compat.OpenCameraResult> r35) {
        /*
            Method dump skipped, instruction units count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl.mo827openCameraWithRetryaeCOTgg(java.lang.String, androidx.camera.camera2.pipe.compat.Camera2DeviceCloser, nl3, e02):java.lang.Object");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getRetryTimeoutNs-om-7c1s$camera_camera2_pipe$default, reason: not valid java name */
        public static /* synthetic */ long m828getRetryTimeoutNsom7c1s$camera_camera2_pipe$default(Companion companion, boolean z, DurationNs durationNs, int i, Object obj) {
            if ((i & 2) != 0) {
                durationNs = null;
            }
            return companion.m832getRetryTimeoutNsom7c1s$camera_camera2_pipe(z, durationNs);
        }

        /* JADX INFO: renamed from: min-L1EDjxI, reason: not valid java name */
        private final long m829minL1EDjxI(long j, DurationNs durationNs) {
            return (durationNs == null || DurationNs.m844compareTozYRVrok(j, durationNs.m853unboximpl()) == -1) ? j : durationNs.m853unboximpl();
        }

        /* JADX INFO: renamed from: shouldRetry-rbpwgO0$camera_camera2_pipe$default, reason: not valid java name */
        public static /* synthetic */ boolean m830shouldRetryrbpwgO0$camera_camera2_pipe$default(Companion companion, int i, int i2, long j, boolean z, boolean z2, DurationNs durationNs, int i3, Object obj) {
            if ((i3 & 16) != 0) {
                z2 = true;
            }
            return companion.m834shouldRetryrbpwgO0$camera_camera2_pipe(i, i2, j, z, z2, (i3 & 32) != 0 ? null : durationNs);
        }

        /* JADX INFO: renamed from: getRetryDelayMs-t8DbYm4$camera_camera2_pipe, reason: not valid java name */
        public final long m831getRetryDelayMst8DbYm4$camera_camera2_pipe(long j, boolean z) {
            if (z && DurationNs.m844compareTozYRVrok(j, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[0].m853unboximpl()) >= 0) {
                return DurationNs.m844compareTozYRVrok(j, RetryingCameraStateOpenerKt.activeResumeCameraRetryThresholds[1].m853unboximpl()) < 0 ? 2000L : 4000L;
            }
            return 500L;
        }

        /* JADX INFO: renamed from: getRetryTimeoutNs-om-7c1s$camera_camera2_pipe, reason: not valid java name */
        public final long m832getRetryTimeoutNsom7c1s$camera_camera2_pipe(boolean z, DurationNs durationNs) {
            return !z ? m829minL1EDjxI(RetryingCameraStateOpenerKt.defaultCameraRetryTimeoutNs, durationNs) : m829minL1EDjxI(RetryingCameraStateOpenerKt.activeResumeCameraRetryTimeoutNs, durationNs);
        }

        /* JADX INFO: renamed from: shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe, reason: not valid java name */
        public final boolean m833shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(boolean z, int i) {
            int i2;
            if (!z || 29 > (i2 = Build.VERSION.SDK_INT) || i2 >= 33) {
                return false;
            }
            CameraError.Companion companion = CameraError.Companion;
            return CameraError.m279equalsimpl0(i, companion.m290getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m289getERROR_CAMERA_DISCONNECTEDv7Vf74A());
        }

        /* JADX INFO: renamed from: shouldRetry-rbpwgO0$camera_camera2_pipe, reason: not valid java name */
        public final boolean m834shouldRetryrbpwgO0$camera_camera2_pipe(int i, int i2, long j, boolean z, boolean z2, DurationNs durationNs) {
            boolean zM833shouldActivateActiveResume8PWMtlg$camera_camera2_pipe = m833shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(z2, i);
            if (zM833shouldActivateActiveResume8PWMtlg$camera_camera2_pipe && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "shouldRetry: Active resume mode is activated");
            }
            if (DurationNs.m844compareTozYRVrok(j, m832getRetryTimeoutNsom7c1s$camera_camera2_pipe(zM833shouldActivateActiveResume8PWMtlg$camera_camera2_pipe, durationNs)) > 0) {
                return false;
            }
            CameraError.Companion companion = CameraError.Companion;
            if (CameraError.m279equalsimpl0(i, companion.m299getERROR_UNDETERMINEDv7Vf74A())) {
                return i2 <= 1;
            }
            if (CameraError.m279equalsimpl0(i, companion.m290getERROR_CAMERA_IN_USEv7Vf74A())) {
                return Build.VERSION.SDK_INT >= 29 || i2 <= 1;
            }
            if (CameraError.m279equalsimpl0(i, companion.m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                return true;
            }
            if (CameraError.m279equalsimpl0(i, companion.m288getERROR_CAMERA_DISABLEDv7Vf74A())) {
                return !z || i2 <= 1;
            }
            if (CameraError.m279equalsimpl0(i, companion.m287getERROR_CAMERA_DEVICEv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m294getERROR_CAMERA_SERVICEv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m289getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m297getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A())) {
                return true;
            }
            if (CameraError.m279equalsimpl0(i, companion.m298getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                return i2 <= 1;
            }
            if (CameraError.m279equalsimpl0(i, companion.m295getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                return false;
            }
            if (CameraError.m279equalsimpl0(i, companion.m300getERROR_UNKNOWN_EXCEPTIONv7Vf74A())) {
                return i2 <= 1;
            }
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e(Log.TAG, "Unexpected CameraError: " + RetryingCameraStateOpenerImpl.Companion);
            }
            return false;
        }

        private Companion() {
        }
    }
}
