package androidx.camera.camera2.pipe.compat;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1", f = "RetryingCameraStateOpener.kt", l = {317, TypedValues.AttributesType.TYPE_PIVOT_TARGET}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(CameraStateOpener cameraStateOpener, e02<? super CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraStateOpener;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (defpackage.yk2.b(2000, r4) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r5)
            goto L38
        L10:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L17:
            defpackage.r57.b(r5)
            goto L2d
        L1b:
            defpackage.r57.b(r5)
            androidx.camera.camera2.pipe.compat.CameraStateOpener r5 = r4.this$0
            xp1 r5 = androidx.camera.camera2.pipe.compat.CameraStateOpener.access$getCameraOpenCancelled$p(r5)
            r4.label = r3
            java.lang.Object r5 = r5.Z(r4)
            if (r5 != r0) goto L2d
            goto L37
        L2d:
            r4.label = r2
            r1 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r4 = defpackage.yk2.b(r1, r4)
            if (r4 != r0) goto L38
        L37:
            return r0
        L38:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
