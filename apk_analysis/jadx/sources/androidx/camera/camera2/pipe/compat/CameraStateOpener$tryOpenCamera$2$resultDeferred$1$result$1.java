package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1", f = "RetryingCameraStateOpener.kt", l = {}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 extends pg8 implements bm3<CameraState, e02<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    public CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(e02<? super CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(e02Var);
        cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(CameraState cameraState, e02<? super Boolean> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1) create(cameraState, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return Boolean.valueOf(!(((CameraState) this.L$0) instanceof CameraStateUnopened));
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
