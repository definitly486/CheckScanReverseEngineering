package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.me0;
import defpackage.pg8;
import defpackage.qz0;
import defpackage.r57;
import defpackage.ue3;
import defpackage.y22;
import defpackage.y68;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$resultDeferred$1", f = "RetryingCameraStateOpener.kt", l = {291}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1 extends pg8 implements bm3<y22, e02<? super OpenCameraResult>, Object> {
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$resultDeferred$1(AndroidCameraState androidCameraState, e02<? super CameraStateOpener$tryOpenCamera$2$resultDeferred$1> e02Var) {
        super(2, e02Var);
        this.$cameraState = androidCameraState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraStateOpener$tryOpenCamera$2$resultDeferred$1(this.$cameraState, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super OpenCameraResult> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            y68<CameraState> state = this.$cameraState.getState();
            CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(null);
            this.label = 1;
            obj = ue3.b(state, cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        CameraState cameraState = (CameraState) obj;
        if (cameraState instanceof CameraStateOpen) {
            return new OpenCameraResult(this.$cameraState, null, 2, null);
        }
        if (cameraState instanceof CameraStateClosing) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosing) cameraState).m802getCameraErrorCodemVEW8x0(), 1, null);
        }
        if (cameraState instanceof CameraStateClosed) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosed) cameraState).m795getCameraErrorCodemVEW8x0(), 1, null);
        }
        if (!(cameraState instanceof CameraStateUnopened)) {
            me0.e();
            return null;
        }
        this.$cameraState.close();
        qz0.i(cameraState, "Unexpected CameraState: ");
        return null;
    }
}
