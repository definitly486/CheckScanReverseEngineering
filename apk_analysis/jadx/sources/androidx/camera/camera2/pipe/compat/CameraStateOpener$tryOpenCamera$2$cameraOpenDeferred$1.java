package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
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
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1", f = "RetryingCameraStateOpener.kt", l = {280}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1 extends pg8 implements bm3<y22, e02<? super OpenCameraResult>, Object> {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, e02<? super CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(this.this$0, this.$cameraId, this.$cameraState, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super OpenCameraResult> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                CameraOpener cameraOpener = this.this$0.cameraOpener;
                String str = this.$cameraId;
                AndroidCameraState androidCameraState = this.$cameraState;
                this.label = 1;
                Object objMo758openCameraRzXb1QE = cameraOpener.mo758openCameraRzXb1QE(str, androidCameraState, this);
                this = objMo758openCameraRzXb1QE;
                if (objMo758openCameraRzXb1QE == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this = this;
            }
        } catch (Exception e) {
            Log log = Log.INSTANCE;
            String str2 = this.$cameraId;
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to open " + ((Object) CameraId.m357toStringimpl(str2)), e);
            }
            this.$cameraState.closeWith$camera_camera2_pipe(e);
            new OpenCameraResult(null, CameraError.m276boximpl(CameraError.Companion.m286fromPVuDhNw$camera_camera2_pipe(e)), 1, null);
        }
        return null;
    }
}
