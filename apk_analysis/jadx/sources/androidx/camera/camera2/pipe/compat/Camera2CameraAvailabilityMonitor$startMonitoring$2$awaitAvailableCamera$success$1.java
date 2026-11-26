package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1", f = "RetryingCameraStateOpener.kt", l = {184}, m = "invokeSuspend", v = 1)
public final class Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ xp1<j59> $listener;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1(xp1<j59> xp1Var, e02<? super Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1> e02Var) {
        super(2, e02Var);
        this.$listener = xp1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1(this.$listener, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            xp1<j59> xp1Var = this.$listener;
            this.label = 1;
            if (xp1Var.Z(this) == a32Var) {
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
