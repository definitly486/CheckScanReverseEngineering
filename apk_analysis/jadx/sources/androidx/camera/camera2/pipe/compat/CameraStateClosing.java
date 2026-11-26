package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateClosing extends CameraState {
    private final CameraError cameraErrorCode;

    public /* synthetic */ CameraStateClosing(CameraError cameraError, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : cameraError, null);
    }

    /* JADX INFO: renamed from: copy-TPqeGZw$default, reason: not valid java name */
    public static /* synthetic */ CameraStateClosing m799copyTPqeGZw$default(CameraStateClosing cameraStateClosing, CameraError cameraError, int i, Object obj) {
        if ((i & 1) != 0) {
            cameraError = cameraStateClosing.cameraErrorCode;
        }
        return cameraStateClosing.m801copyTPqeGZw(cameraError);
    }

    /* JADX INFO: renamed from: component1-mVEW8x0, reason: not valid java name */
    public final CameraError m800component1mVEW8x0() {
        return this.cameraErrorCode;
    }

    /* JADX INFO: renamed from: copy-TPqeGZw, reason: not valid java name */
    public final CameraStateClosing m801copyTPqeGZw(CameraError cameraError) {
        return new CameraStateClosing(cameraError, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraStateClosing) && aa4.e(this.cameraErrorCode, ((CameraStateClosing) obj).cameraErrorCode);
    }

    /* JADX INFO: renamed from: getCameraErrorCode-mVEW8x0, reason: not valid java name */
    public final CameraError m802getCameraErrorCodemVEW8x0() {
        return this.cameraErrorCode;
    }

    public int hashCode() {
        CameraError cameraError = this.cameraErrorCode;
        if (cameraError == null) {
            return 0;
        }
        return CameraError.m280hashCodeimpl(cameraError.m283unboximpl());
    }

    public String toString() {
        return "CameraStateClosing(cameraErrorCode=" + this.cameraErrorCode + ')';
    }

    private CameraStateClosing(CameraError cameraError) {
        super(null);
        this.cameraErrorCode = cameraError;
    }

    public /* synthetic */ CameraStateClosing(CameraError cameraError, jh2 jh2Var) {
        this(cameraError);
    }
}
