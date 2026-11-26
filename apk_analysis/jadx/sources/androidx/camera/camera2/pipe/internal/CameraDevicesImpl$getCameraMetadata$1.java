package androidx.camera.camera2.pipe.internal;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.CameraDevicesImpl", f = "CameraDevicesImpl.kt", l = {105}, m = "getCameraMetadata-_mltaTw", v = 1)
public final class CameraDevicesImpl$getCameraMetadata$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CameraDevicesImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraDevicesImpl$getCameraMetadata$1(CameraDevicesImpl cameraDevicesImpl, e02<? super CameraDevicesImpl$getCameraMetadata$1> e02Var) {
        super(e02Var);
        this.this$0 = cameraDevicesImpl;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo258getCameraMetadata_mltaTw(null, null, this);
    }
}
