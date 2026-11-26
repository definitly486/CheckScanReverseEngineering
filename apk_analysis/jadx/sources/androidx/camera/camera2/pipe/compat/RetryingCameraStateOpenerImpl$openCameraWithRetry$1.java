package androidx.camera.camera2.pipe.compat;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl", f = "RetryingCameraStateOpener.kt", l = {418, TypedValues.CycleType.TYPE_WAVE_PERIOD, 476}, m = "openCameraWithRetry-aeCOTgg", v = 1)
public final class RetryingCameraStateOpenerImpl$openCameraWithRetry$1 extends f02 {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RetryingCameraStateOpenerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryingCameraStateOpenerImpl$openCameraWithRetry$1(RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, e02<? super RetryingCameraStateOpenerImpl$openCameraWithRetry$1> e02Var) {
        super(e02Var);
        this.this$0 = retryingCameraStateOpenerImpl;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo827openCameraWithRetryaeCOTgg(null, null, null, this);
    }
}
