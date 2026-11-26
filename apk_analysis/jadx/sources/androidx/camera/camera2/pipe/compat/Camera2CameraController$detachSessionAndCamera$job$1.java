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

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$detachSessionAndCamera$job$1", f = "Camera2CameraController.kt", l = {}, m = "invokeSuspend", v = 1)
public final class Camera2CameraController$detachSessionAndCamera$job$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ VirtualCamera $camera;
    final /* synthetic */ CaptureSessionState $session;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraController$detachSessionAndCamera$job$1(CaptureSessionState captureSessionState, VirtualCamera virtualCamera, e02<? super Camera2CameraController$detachSessionAndCamera$job$1> e02Var) {
        super(2, e02Var);
        this.$session = captureSessionState;
        this.$camera = virtualCamera;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2CameraController$detachSessionAndCamera$job$1(this.$session, this.$camera, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Camera2CameraController$detachSessionAndCamera$job$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        CaptureSessionState captureSessionState = this.$session;
        if (captureSessionState != null) {
            captureSessionState.shutdown();
        }
        VirtualCamera virtualCamera = this.$camera;
        if (virtualCamera != null) {
            VirtualCamera.m839disconnectTPqeGZw$default(virtualCamera, null, 1, null);
        }
        return j59.a;
    }
}
