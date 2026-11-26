package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureFailure;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.compat.AndroidCaptureFailure;
import androidx.camera.core.impl.CameraCaptureFailure;
import defpackage.x07;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureFailureAdapter extends CameraCaptureFailure {
    private final RequestFailure requestFailure;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureFailureAdapter(RequestFailure requestFailure) {
        super(CameraCaptureFailure.Reason.ERROR);
        requestFailure.getClass();
        this.requestFailure = requestFailure;
    }

    @Override // androidx.camera.core.impl.CameraCaptureFailure
    public CaptureFailure getCaptureFailure() {
        RequestFailure requestFailure = this.requestFailure;
        requestFailure.getClass();
        Object objUnwrapAs = ((AndroidCaptureFailure) requestFailure).unwrapAs(x07.a(CaptureFailure.class));
        objUnwrapAs.getClass();
        return (CaptureFailure) objUnwrapAs;
    }
}
