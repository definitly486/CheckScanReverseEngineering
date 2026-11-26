package androidx.camera.camera2.pipe.internal;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.CameraDevicesImpl", f = "CameraDevicesImpl.kt", l = {WebmConstants.MAX_META_SEEK_SIZE}, m = "getCameraIds-iAq86To", v = 1)
public final class CameraDevicesImpl$getCameraIds$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CameraDevicesImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraDevicesImpl$getCameraIds$1(CameraDevicesImpl cameraDevicesImpl, e02<? super CameraDevicesImpl$getCameraIds$1> e02Var) {
        super(e02Var);
        this.this$0 = cameraDevicesImpl;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo257getCameraIdsiAq86To(null, this);
    }
}
