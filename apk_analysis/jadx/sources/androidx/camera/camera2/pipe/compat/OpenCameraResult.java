package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class OpenCameraResult {
    private final AndroidCameraState cameraState;
    private final CameraError errorCode;

    public /* synthetic */ OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : androidCameraState, (i & 2) != 0 ? null : cameraError, null);
    }

    /* JADX INFO: renamed from: copy-8d-yNqA$default, reason: not valid java name */
    public static /* synthetic */ OpenCameraResult m808copy8dyNqA$default(OpenCameraResult openCameraResult, AndroidCameraState androidCameraState, CameraError cameraError, int i, Object obj) {
        if ((i & 1) != 0) {
            androidCameraState = openCameraResult.cameraState;
        }
        if ((i & 2) != 0) {
            cameraError = openCameraResult.errorCode;
        }
        return openCameraResult.m810copy8dyNqA(androidCameraState, cameraError);
    }

    public final AndroidCameraState component1() {
        return this.cameraState;
    }

    /* JADX INFO: renamed from: component2-mVEW8x0, reason: not valid java name */
    public final CameraError m809component2mVEW8x0() {
        return this.errorCode;
    }

    /* JADX INFO: renamed from: copy-8d-yNqA, reason: not valid java name */
    public final OpenCameraResult m810copy8dyNqA(AndroidCameraState androidCameraState, CameraError cameraError) {
        return new OpenCameraResult(androidCameraState, cameraError, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenCameraResult)) {
            return false;
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) obj;
        return aa4.e(this.cameraState, openCameraResult.cameraState) && aa4.e(this.errorCode, openCameraResult.errorCode);
    }

    public final AndroidCameraState getCameraState() {
        return this.cameraState;
    }

    /* JADX INFO: renamed from: getErrorCode-mVEW8x0, reason: not valid java name */
    public final CameraError m811getErrorCodemVEW8x0() {
        return this.errorCode;
    }

    public int hashCode() {
        AndroidCameraState androidCameraState = this.cameraState;
        int iHashCode = (androidCameraState == null ? 0 : androidCameraState.hashCode()) * 31;
        CameraError cameraError = this.errorCode;
        return iHashCode + (cameraError != null ? CameraError.m280hashCodeimpl(cameraError.m283unboximpl()) : 0);
    }

    public String toString() {
        return "OpenCameraResult(cameraState=" + this.cameraState + ", errorCode=" + this.errorCode + ')';
    }

    private OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError) {
        this.cameraState = androidCameraState;
        this.errorCode = cameraError;
    }

    public /* synthetic */ OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError, jh2 jh2Var) {
        this(androidCameraState, cameraError);
    }
}
