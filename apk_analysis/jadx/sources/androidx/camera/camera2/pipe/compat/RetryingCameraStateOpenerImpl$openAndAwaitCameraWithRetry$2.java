package androidx.camera.camera2.pipe.compat;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2", f = "RetryingCameraStateOpener.kt", l = {497, TypedValues.PositionType.TYPE_PERCENT_WIDTH}, m = "invokeSuspend", v = 1)
public final class RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2 extends pg8 implements bm3<y22, e02<? super AwaitOpenCameraResult>, Object> {
    final /* synthetic */ Camera2DeviceCloser $camera2DeviceCloser;
    final /* synthetic */ String $cameraId;
    Object L$0;
    int label;
    final /* synthetic */ RetryingCameraStateOpenerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, String str, Camera2DeviceCloser camera2DeviceCloser, e02<? super RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2> e02Var) {
        super(2, e02Var);
        this.this$0 = retryingCameraStateOpenerImpl;
        this.$cameraId = str;
        this.$camera2DeviceCloser = camera2DeviceCloser;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(this.this$0, this.$cameraId, this.$camera2DeviceCloser, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super AwaitOpenCameraResult> e02Var) {
        return ((RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
    
        if (r1 == r7) goto L22;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
