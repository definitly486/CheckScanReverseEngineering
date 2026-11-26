package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureFailure;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.ne4;
import defpackage.vh;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCaptureFailure implements RequestFailure {
    private final CaptureFailure captureFailure;
    private final long frameNumber;
    private final int reason;
    private final RequestMetadata requestMetadata;
    private final boolean wasImageCaptured;

    public AndroidCaptureFailure(RequestMetadata requestMetadata, CaptureFailure captureFailure) {
        requestMetadata.getClass();
        captureFailure.getClass();
        this.requestMetadata = requestMetadata;
        this.captureFailure = captureFailure;
        this.frameNumber = FrameNumber.m464constructorimpl(captureFailure.getFrameNumber());
        this.reason = captureFailure.getReason();
        this.wasImageCaptured = captureFailure.wasImageCaptured();
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo638getFrameNumberUgla2oM() {
        return this.frameNumber;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public int getReason() {
        return this.reason;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public RequestMetadata getRequestMetadata() {
        return this.requestMetadata;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public boolean getWasImageCaptured() {
        return this.wasImageCaptured;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, CaptureFailure.class)) {
            return (T) this.captureFailure;
        }
        return null;
    }
}
