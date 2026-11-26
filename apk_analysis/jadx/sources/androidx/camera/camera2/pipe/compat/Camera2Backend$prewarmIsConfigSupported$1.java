package androidx.camera.camera2.pipe.compat;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2Backend$prewarmIsConfigSupported$1", f = "Camera2Backend.kt", l = {99, 100}, m = "invokeSuspend", v = 1)
public final class Camera2Backend$prewarmIsConfigSupported$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2Backend this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2Backend$prewarmIsConfigSupported$1(Camera2Backend camera2Backend, String str, e02<? super Camera2Backend$prewarmIsConfigSupported$1> e02Var) {
        super(2, e02Var);
        this.this$0 = camera2Backend;
        this.$cameraId = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2Backend$prewarmIsConfigSupported$1(this.this$0, this.$cameraId, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Camera2Backend$prewarmIsConfigSupported$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r5.m765getOrInitializeDeviceSetupWrapper0r8Bogc(r1, r4) == r0) goto L15;
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
            goto L40
        L10:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L17:
            defpackage.r57.b(r5)
            goto L2f
        L1b:
            defpackage.r57.b(r5)
            androidx.camera.camera2.pipe.compat.Camera2Backend r5 = r4.this$0
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache r5 = androidx.camera.camera2.pipe.compat.Camera2Backend.access$getCamera2DeviceCache$p(r5)
            java.lang.String r1 = r4.$cameraId
            r4.label = r3
            java.lang.Object r5 = r5.m764getOrInitializeDeviceSetupCompat0r8Bogc(r1, r4)
            if (r5 != r0) goto L2f
            goto L3f
        L2f:
            androidx.camera.camera2.pipe.compat.Camera2Backend r5 = r4.this$0
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache r5 = androidx.camera.camera2.pipe.compat.Camera2Backend.access$getCamera2DeviceCache$p(r5)
            java.lang.String r1 = r4.$cameraId
            r4.label = r2
            java.lang.Object r4 = r5.m765getOrInitializeDeviceSetupWrapper0r8Bogc(r1, r4)
            if (r4 != r0) goto L40
        L3f:
            return r0
        L40:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2Backend$prewarmIsConfigSupported$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
