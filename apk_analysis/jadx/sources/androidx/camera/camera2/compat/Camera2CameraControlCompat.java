package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.mk2;
import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2CameraControlCompat extends Request.Listener {

    public static abstract class Bindings {
        public abstract Camera2CameraControlCompat bindCamera2CameraControlCompImpl(Camera2CameraControlCompatImpl camera2CameraControlCompatImpl);
    }

    public static final class DefaultImpls {
        @Deprecated
        public static void onAborted(Camera2CameraControlCompat camera2CameraControlCompat, Request request) {
            request.getClass();
            Camera2CameraControlCompat.super.onAborted(request);
        }

        @ul2
        @Deprecated
        /* JADX INFO: renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
        public static void m21onBufferLostDlC0U5Y(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, int i) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.m628onBufferLostDlC0U5Y(requestMetadata, j, i);
        }

        @Deprecated
        /* JADX INFO: renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
        public static void m22onBufferLostiiEMlm4(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, int i, int i2) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.mo40onBufferLostiiEMlm4(requestMetadata, j, i, i2);
        }

        @Deprecated
        public static void onCaptureProgress(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, int i) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.onCaptureProgress(requestMetadata, i);
        }

        @Deprecated
        /* JADX INFO: renamed from: onComplete-CcXjc1I, reason: not valid java name */
        public static void m23onCompleteCcXjc1I(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
            requestMetadata.getClass();
            frameInfo.getClass();
            Camera2CameraControlCompat.super.mo9onCompleteCcXjc1I(requestMetadata, j, frameInfo);
        }

        @Deprecated
        /* JADX INFO: renamed from: onFailed-CcXjc1I, reason: not valid java name */
        public static void m24onFailedCcXjc1I(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
            requestMetadata.getClass();
            requestFailure.getClass();
            Camera2CameraControlCompat.super.mo10onFailedCcXjc1I(requestMetadata, j, requestFailure);
        }

        @Deprecated
        /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
        public static void m25onPartialCaptureResultCcXjc1I(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
            requestMetadata.getClass();
            frameMetadata.getClass();
            Camera2CameraControlCompat.super.mo41onPartialCaptureResultCcXjc1I(requestMetadata, j, frameMetadata);
        }

        @Deprecated
        /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
        public static void m26onReadoutStartedmP9r9w(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, long j2) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.mo42onReadoutStartedmP9r9w(requestMetadata, j, j2);
        }

        @Deprecated
        public static void onRequestSequenceAborted(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.onRequestSequenceAborted(requestMetadata);
        }

        @Deprecated
        /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
        public static void m27onRequestSequenceCompletedRuT0dZU(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.mo43onRequestSequenceCompletedRuT0dZU(requestMetadata, j);
        }

        @Deprecated
        public static void onRequestSequenceCreated(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.onRequestSequenceCreated(requestMetadata);
        }

        @Deprecated
        public static void onRequestSequenceSubmitted(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.onRequestSequenceSubmitted(requestMetadata);
        }

        @Deprecated
        /* JADX INFO: renamed from: onStarted-uGKBvU4, reason: not valid java name */
        public static void m28onStarteduGKBvU4(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, long j2) {
            requestMetadata.getClass();
            Camera2CameraControlCompat.super.mo44onStarteduGKBvU4(requestMetadata, j, j2);
        }

        @Deprecated
        /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I, reason: not valid java name */
        public static void m29onTotalCaptureResultCcXjc1I(Camera2CameraControlCompat camera2CameraControlCompat, RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
            requestMetadata.getClass();
            frameInfo.getClass();
            Camera2CameraControlCompat.super.mo11onTotalCaptureResultCcXjc1I(requestMetadata, j, frameInfo);
        }
    }

    static /* synthetic */ mk2 applyAsync$default(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: applyAsync");
            return null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return camera2CameraControlCompat.applyAsync(useCaseCameraRequestControl, z);
    }

    void addRequestOption(CaptureRequestOptions captureRequestOptions);

    mk2<Void> applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z);

    void cancelCurrentTask();

    void clearRequestOption();

    CaptureRequestOptions getRequestOption();
}
