package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$timeoutJob$1", f = "RetryingCameraStateOpener.kt", l = {312}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$timeoutJob$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;

    public CameraStateOpener$tryOpenCamera$2$timeoutJob$1(e02<? super CameraStateOpener$tryOpenCamera$2$timeoutJob$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraStateOpener$tryOpenCamera$2$timeoutJob$1(e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$timeoutJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            this.label = 1;
            if (yk2.b(3000L, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
