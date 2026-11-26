package androidx.camera.camera2.pipe.compat;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener", f = "RetryingCameraStateOpener.kt", l = {WebmConstants.MkvEbmlElement.VOID, 275}, m = "tryOpenCamera-7pD7j80$camera_camera2_pipe", v = 1)
public final class CameraStateOpener$tryOpenCamera$1 extends f02 {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$1(CameraStateOpener cameraStateOpener, e02<? super CameraStateOpener$tryOpenCamera$1> e02Var) {
        super(e02Var);
        this.this$0 = cameraStateOpener;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m803tryOpenCamera7pD7j80$camera_camera2_pipe(null, 0, 0L, null, null, this);
    }
}
