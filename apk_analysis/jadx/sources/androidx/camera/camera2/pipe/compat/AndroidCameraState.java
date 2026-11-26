package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.eh;
import defpackage.j59;
import defpackage.jh2;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.ue3;
import defpackage.x07;
import defpackage.xg5;
import defpackage.y68;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCameraState extends CameraDevice.StateCallback {
    private final xg5<CameraState> _state;
    private final int attemptNumber;
    private final long attemptTimestampNanos;
    private final AudioRestrictionController audioRestrictionController;
    private final Camera2DeviceCloser camera2DeviceCloser;
    private final Camera2Quirks camera2Quirks;
    private final CountDownLatch cameraDeviceClosed;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;
    private final int debugId;
    private final CameraDevice.StateCallback interopCameraDeviceStateCallback;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final Object lock;
    private final CameraMetadata metadata;
    private TimestampNs openTimestampNanos;
    private boolean opening;
    private ClosingInfo pendingClose;
    private final long requestTimestampNanos;
    private boolean shouldDelayFinalizing;
    private final Threads threads;
    private final TimeSource timeSource;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.AndroidCameraState$awaitClosed$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.AndroidCameraState$awaitClosed$2", f = "VirtualCamera.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<CameraState, e02<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(CameraState cameraState, e02<? super Boolean> e02Var) {
            return ((AnonymousClass2) create(cameraState, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(((CameraState) this.L$0) instanceof CameraStateClosed);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    private AndroidCameraState(String str, CameraMetadata cameraMetadata, int i, long j, TimeSource timeSource, CameraErrorListener cameraErrorListener, Camera2DeviceCloser camera2DeviceCloser, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionController audioRestrictionController, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener) {
        str.getClass();
        cameraMetadata.getClass();
        timeSource.getClass();
        cameraErrorListener.getClass();
        camera2DeviceCloser.getClass();
        camera2Quirks.getClass();
        threads.getClass();
        audioRestrictionController.getClass();
        this.cameraId = str;
        this.metadata = cameraMetadata;
        this.attemptNumber = i;
        this.attemptTimestampNanos = j;
        this.timeSource = timeSource;
        this.cameraErrorListener = cameraErrorListener;
        this.camera2DeviceCloser = camera2DeviceCloser;
        this.camera2Quirks = camera2Quirks;
        this.threads = threads;
        this.audioRestrictionController = audioRestrictionController;
        this.interopCameraDeviceStateCallback = stateCallback;
        this.interopCaptureSessionListener = captureSessionListener;
        this.debugId = VirtualCameraKt.getAndroidCameraDebugIds().b();
        this.lock = new Object();
        this.cameraDeviceClosed = new CountDownLatch(1);
        this._state = px.a(CameraStateUnopened.INSTANCE);
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, "Opening " + ((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())));
        }
        if (i != 1) {
            Timestamps timestamps = Timestamps.INSTANCE;
            j = timeSource.mo855nowvQl9yQU();
        }
        this.requestTimestampNanos = j;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    private final void closeWith(CameraDevice cameraDevice, ClosingInfo closingInfo) {
        AndroidCameraState androidCameraState;
        CameraState value = this._state.getValue();
        CameraDeviceWrapper cameraDevice2 = value instanceof CameraStateOpen ? ((CameraStateOpen) value).getCameraDevice() : null;
        synchronized (this.lock) {
            if (this.pendingClose == null) {
                this.pendingClose = closingInfo;
                if (this.opening) {
                    closingInfo = null;
                }
            } else {
                closingInfo = null;
            }
        }
        if (closingInfo != null) {
            if (closingInfo.m745getErrorCodemVEW8x0() != null && closingInfo.getReason() != ClosedReason.CAMERA2_EXCEPTION) {
                this.cameraErrorListener.mo769onCameraError3M5Xam4(this.cameraId, closingInfo.m745getErrorCodemVEW8x0().m283unboximpl(), false);
            }
            this._state.setValue(new CameraStateClosing(closingInfo.m745getErrorCodemVEW8x0(), null));
            if (closingInfo.getReason() != ClosedReason.CAMERA2_CLOSED) {
                boolean zM738shouldReopenCameraWhenClosing_z0IXec = m738shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m745getErrorCodemVEW8x0());
                if (zM738shouldReopenCameraWhenClosing_z0IXec) {
                    synchronized (this.lock) {
                        this.shouldDelayFinalizing = true;
                        j59 j59Var = j59.a;
                    }
                }
                androidCameraState = this;
                this.camera2DeviceCloser.closeCamera(cameraDevice2, cameraDevice, androidCameraState, this.audioRestrictionController, zM738shouldReopenCameraWhenClosing_z0IXec, m737shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m745getErrorCodemVEW8x0()));
            } else {
                androidCameraState = this;
            }
            androidCameraState._state.setValue(androidCameraState.computeClosedState(closingInfo));
        }
    }

    /* JADX INFO: renamed from: closeWith-8PWMtlg, reason: not valid java name */
    private final void m736closeWith8PWMtlg(Throwable th, int i) {
        closeWith(null, new ClosingInfo(ClosedReason.CAMERA2_EXCEPTION, 0L, CameraError.m276boximpl(i), th, 2, null));
    }

    private final CameraStateClosed computeClosedState(ClosingInfo closingInfo) {
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        TimestampNs timestampNs = this.openTimestampNanos;
        long jM744getClosingTimestampvQl9yQU = closingInfo.m744getClosingTimestampvQl9yQU();
        DurationNs durationNsM843boximpl = timestampNs != null ? DurationNs.m843boximpl(DurationNs.m845constructorimpl(timestampNs.m864unboximpl() - this.attemptTimestampNanos)) : null;
        DurationNs durationNsM843boximpl2 = timestampNs != null ? DurationNs.m843boximpl(DurationNs.m845constructorimpl(timestampNs.m864unboximpl() - this.requestTimestampNanos)) : null;
        DurationNs durationNsM843boximpl3 = timestampNs != null ? DurationNs.m843boximpl(DurationNs.m845constructorimpl(jM744getClosingTimestampvQl9yQU - timestampNs.m864unboximpl())) : null;
        long jM845constructorimpl = DurationNs.m845constructorimpl(jMo855nowvQl9yQU - jM744getClosingTimestampvQl9yQU);
        return new CameraStateClosed(this.cameraId, closingInfo.getReason(), Integer.valueOf(this.attemptNumber - 1), durationNsM843boximpl, closingInfo.getException(), durationNsM843boximpl2, durationNsM843boximpl3, DurationNs.m843boximpl(jM845constructorimpl), closingInfo.m745getErrorCodemVEW8x0(), null);
    }

    /* JADX INFO: renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec, reason: not valid java name */
    private final boolean m737shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(Camera2Quirks camera2Quirks, String str, CameraError cameraError) {
        return camera2Quirks.m783xfcf3eba9(str) && cameraError == null;
    }

    /* JADX INFO: renamed from: shouldReopenCameraWhenClosing-_z0IXec, reason: not valid java name */
    private final boolean m738shouldReopenCameraWhenClosing_z0IXec(Camera2Quirks camera2Quirks, String str, CameraError cameraError) {
        return m737shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(camera2Quirks, str, cameraError) && camera2Quirks.m782x552c1673(str);
    }

    public final boolean awaitCameraDeviceClosed$camera_camera2_pipe(long j) {
        return this.cameraDeviceClosed.await(j, TimeUnit.MILLISECONDS);
    }

    public final Object awaitClosed(e02<? super j59> e02Var) {
        Object objB = ue3.b(getState(), new AnonymousClass2(null), e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    public final void close() {
        CameraState value = this._state.getValue();
        CameraDeviceWrapper cameraDevice = value instanceof CameraStateOpen ? ((CameraStateOpen) value).getCameraDevice() : null;
        closeWith(cameraDevice != null ? (CameraDevice) cameraDevice.unwrapAs(x07.a(CameraDevice.class)) : null, new ClosingInfo(ClosedReason.APP_CLOSED, 0L, null, null, 14, null));
    }

    public final void closeWith$camera_camera2_pipe(Throwable th) {
        th.getClass();
        CameraError.Companion companion = CameraError.Companion;
        int iM286fromPVuDhNw$camera_camera2_pipe = companion.m286fromPVuDhNw$camera_camera2_pipe(th);
        if (CameraError.m279equalsimpl0(iM286fromPVuDhNw$camera_camera2_pipe, companion.m299getERROR_UNDETERMINEDv7Vf74A())) {
            return;
        }
        m736closeWith8PWMtlg(th, iM286fromPVuDhNw$camera_camera2_pipe);
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m739getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    public final CameraMetadata getMetadata() {
        return this.metadata;
    }

    public final y68<CameraState> getState() {
        return this._state;
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onClosed(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        if (!aa4.e(cameraDevice.getId(), this.cameraId)) {
            ah.f("Check failed.");
            return;
        }
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, ((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + ": onClosed");
        }
        this.cameraDeviceClosed.countDown();
        synchronized (this.lock) {
            if (!this.shouldDelayFinalizing) {
                j59 j59Var = j59.a;
                onFinalized$camera_camera2_pipe(cameraDevice);
                return;
            }
            if (log.getINFO_LOGGABLE()) {
                android.util.Log.i(Log.TAG, this + "#onClosed: Delaying finalizing.");
            }
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onDisconnected(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        if (!aa4.e(cameraDevice.getId(), this.cameraId)) {
            ah.f("Check failed.");
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + "#onDisconnected");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, ((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + ": onDisconnected");
        }
        this.cameraDeviceClosed.countDown();
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_DISCONNECTED, 0L, CameraError.m276boximpl(CameraError.Companion.m289getERROR_CAMERA_DISCONNECTEDv7Vf74A()), null, 10, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onDisconnected(cameraDevice);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onError(CameraDevice cameraDevice, int i) {
        cameraDevice.getClass();
        if (!aa4.e(cameraDevice.getId(), this.cameraId)) {
            ah.f("Check failed.");
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + "#onError-" + i);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, ((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + ": onError " + i);
        }
        this.cameraDeviceClosed.countDown();
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_ERROR, 0L, CameraError.m276boximpl(CameraError.Companion.m284fromPVuDhNw$camera_camera2_pipe(i)), null, 10, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onError(cameraDevice, i);
        }
        Trace.endSection();
    }

    public final void onFinalized$camera_camera2_pipe(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + "#onFinalized");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + ": onFinalized");
        }
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_CLOSED, 0L, null, null, 14, null));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onClosed(cameraDevice);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onOpened(CameraDevice cameraDevice) {
        ClosingInfo closingInfo;
        ClosingInfo closingInfo2;
        String strC;
        cameraDevice.getClass();
        if (!aa4.e(cameraDevice.getId(), this.cameraId)) {
            ah.f("Check failed.");
            return;
        }
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        this.openTimestampNanos = TimestampNs.m856boximpl(jMo855nowvQl9yQU);
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + "#onOpened");
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            long jM845constructorimpl = DurationNs.m845constructorimpl(jMo855nowvQl9yQU - this.requestTimestampNanos);
            long jM845constructorimpl2 = DurationNs.m845constructorimpl(jMo855nowvQl9yQU - this.attemptTimestampNanos);
            if (this.attemptNumber == 1) {
                StringBuilder sb = new StringBuilder("Opened ");
                sb.append((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8()));
                sb.append(" in ");
                strC = eh.c(new Object[]{Double.valueOf(jM845constructorimpl / 1000000.0d)}, 1, null, "%.3f ms", sb);
            } else {
                strC = "Opened " + ((Object) CameraId.m357toStringimpl(m739getCameraIdDz_R5H8())) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM845constructorimpl / 1000000.0d)}, 1)) + " (" + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM845constructorimpl2 / 1000000.0d)}, 1)) + " total) after " + this.attemptNumber + " attempts.";
            }
            android.util.Log.i(Log.TAG, strC);
        }
        synchronized (this.lock) {
            closingInfo = this.pendingClose;
            if (closingInfo == null) {
                this.opening = true;
            }
        }
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onOpened(cameraDevice);
        }
        if (closingInfo != null) {
            Camera2DeviceCloser.closeCamera$default(this.camera2DeviceCloser, null, cameraDevice, this, this.audioRestrictionController, m738shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m745getErrorCodemVEW8x0()), m737shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.m745getErrorCodemVEW8x0()), 1, null);
            return;
        }
        AndroidCameraDevice androidCameraDevice = new AndroidCameraDevice(this.metadata, cameraDevice, this.cameraId, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads, null);
        this.audioRestrictionController.addListener(androidCameraDevice);
        this._state.setValue(new CameraStateOpen(androidCameraDevice));
        synchronized (this.lock) {
            this.opening = false;
            closingInfo2 = this.pendingClose;
        }
        if (closingInfo2 != null) {
            this._state.setValue(new CameraStateClosing(closingInfo2.m745getErrorCodemVEW8x0(), null));
            this.camera2DeviceCloser.closeCamera(androidCameraDevice, cameraDevice, this, this.audioRestrictionController, m738shouldReopenCameraWhenClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo2.m745getErrorCodemVEW8x0()), m737shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo2.m745getErrorCodemVEW8x0()));
            this._state.setValue(computeClosedState(closingInfo2));
        }
        Trace.endSection();
    }

    public String toString() {
        return "CameraState-" + this.debugId;
    }

    public static final class ClosingInfo {
        private final long closingTimestamp;
        private final CameraError errorCode;
        private final Throwable exception;
        private final ClosedReason reason;

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ ClosingInfo(ClosedReason closedReason, long j, CameraError cameraError, Throwable th, int i, jh2 jh2Var) {
            if ((i & 2) != 0) {
                Timestamps timestamps = Timestamps.INSTANCE;
                j = new SystemTimeSource().mo855nowvQl9yQU();
            }
            this(closedReason, j, (i & 4) != 0 ? null : cameraError, (i & 8) != 0 ? null : th, null);
        }

        /* JADX INFO: renamed from: copy-fgCNvVg$default, reason: not valid java name */
        public static /* synthetic */ ClosingInfo m740copyfgCNvVg$default(ClosingInfo closingInfo, ClosedReason closedReason, long j, CameraError cameraError, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                closedReason = closingInfo.reason;
            }
            if ((i & 2) != 0) {
                j = closingInfo.closingTimestamp;
            }
            if ((i & 4) != 0) {
                cameraError = closingInfo.errorCode;
            }
            if ((i & 8) != 0) {
                th = closingInfo.exception;
            }
            return closingInfo.m743copyfgCNvVg(closedReason, j, cameraError, th);
        }

        public final ClosedReason component1() {
            return this.reason;
        }

        /* JADX INFO: renamed from: component2-vQl9yQU, reason: not valid java name */
        public final long m741component2vQl9yQU() {
            return this.closingTimestamp;
        }

        /* JADX INFO: renamed from: component3-mVEW8x0, reason: not valid java name */
        public final CameraError m742component3mVEW8x0() {
            return this.errorCode;
        }

        public final Throwable component4() {
            return this.exception;
        }

        /* JADX INFO: renamed from: copy-fgCNvVg, reason: not valid java name */
        public final ClosingInfo m743copyfgCNvVg(ClosedReason closedReason, long j, CameraError cameraError, Throwable th) {
            closedReason.getClass();
            return new ClosingInfo(closedReason, j, cameraError, th, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClosingInfo)) {
                return false;
            }
            ClosingInfo closingInfo = (ClosingInfo) obj;
            return this.reason == closingInfo.reason && TimestampNs.m859equalsimpl0(this.closingTimestamp, closingInfo.closingTimestamp) && aa4.e(this.errorCode, closingInfo.errorCode) && aa4.e(this.exception, closingInfo.exception);
        }

        /* JADX INFO: renamed from: getClosingTimestamp-vQl9yQU, reason: not valid java name */
        public final long m744getClosingTimestampvQl9yQU() {
            return this.closingTimestamp;
        }

        /* JADX INFO: renamed from: getErrorCode-mVEW8x0, reason: not valid java name */
        public final CameraError m745getErrorCodemVEW8x0() {
            return this.errorCode;
        }

        public final Throwable getException() {
            return this.exception;
        }

        public final ClosedReason getReason() {
            return this.reason;
        }

        public int hashCode() {
            int iM860hashCodeimpl = (TimestampNs.m860hashCodeimpl(this.closingTimestamp) + (this.reason.hashCode() * 31)) * 31;
            CameraError cameraError = this.errorCode;
            int iM280hashCodeimpl = (iM860hashCodeimpl + (cameraError == null ? 0 : CameraError.m280hashCodeimpl(cameraError.m283unboximpl()))) * 31;
            Throwable th = this.exception;
            return iM280hashCodeimpl + (th != null ? th.hashCode() : 0);
        }

        public String toString() {
            return "ClosingInfo(reason=" + this.reason + ", closingTimestamp=" + ((Object) TimestampNs.m863toStringimpl(this.closingTimestamp)) + ", errorCode=" + this.errorCode + ", exception=" + this.exception + ')';
        }

        private ClosingInfo(ClosedReason closedReason, long j, CameraError cameraError, Throwable th) {
            closedReason.getClass();
            this.reason = closedReason;
            this.closingTimestamp = j;
            this.errorCode = cameraError;
            this.exception = th;
        }

        public /* synthetic */ ClosingInfo(ClosedReason closedReason, long j, CameraError cameraError, Throwable th, jh2 jh2Var) {
            this(closedReason, j, cameraError, th);
        }
    }

    public /* synthetic */ AndroidCameraState(String str, CameraMetadata cameraMetadata, int i, long j, TimeSource timeSource, CameraErrorListener cameraErrorListener, Camera2DeviceCloser camera2DeviceCloser, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionController audioRestrictionController, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, jh2 jh2Var) {
        this(str, cameraMetadata, i, j, timeSource, cameraErrorListener, camera2DeviceCloser, camera2Quirks, threads, audioRestrictionController, stateCallback, captureSessionListener);
    }

    public /* synthetic */ AndroidCameraState(String str, CameraMetadata cameraMetadata, int i, long j, TimeSource timeSource, CameraErrorListener cameraErrorListener, Camera2DeviceCloser camera2DeviceCloser, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionController audioRestrictionController, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, int i2, jh2 jh2Var) {
        this(str, cameraMetadata, i, j, timeSource, cameraErrorListener, camera2DeviceCloser, camera2Quirks, threads, audioRestrictionController, (i2 & 1024) != 0 ? null : stateCallback, (i2 & 2048) != 0 ? null : captureSessionListener, null);
    }
}
