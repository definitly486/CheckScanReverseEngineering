package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1", f = "RetryingCameraStateOpener.kt", l = {}, m = "invokeSuspend", v = 1)
public final class RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1 extends pg8 implements bm3<CameraState, e02<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    public RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1(e02<? super RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1 retryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1 = new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1(e02Var);
        retryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1.L$0 = obj;
        return retryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(CameraState cameraState, e02<? super Boolean> e02Var) {
        return ((RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1) create(cameraState, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return Boolean.valueOf(!aa4.e((CameraState) this.L$0, CameraStateUnopened.INSTANCE));
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
