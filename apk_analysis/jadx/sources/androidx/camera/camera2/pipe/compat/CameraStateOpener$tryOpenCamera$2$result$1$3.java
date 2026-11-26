package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$3", f = "RetryingCameraStateOpener.kt", l = {}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$result$1$3 extends pg8 implements nl3<e02<? super OpenCameraResult>, Object> {
    final /* synthetic */ r07<mk2<OpenCameraResult>> $cameraOpenDeferred;
    final /* synthetic */ AndroidCameraState $cameraState;
    final /* synthetic */ r07<mb4> $timeoutJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$3(r07<mb4> r07Var, r07<mk2<OpenCameraResult>> r07Var2, AndroidCameraState androidCameraState, e02<? super CameraStateOpener$tryOpenCamera$2$result$1$3> e02Var) {
        super(1, e02Var);
        this.$timeoutJob = r07Var;
        this.$cameraOpenDeferred = r07Var2;
        this.$cameraState = androidCameraState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$3(this.$timeoutJob, this.$cameraOpenDeferred, this.$cameraState, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super OpenCameraResult> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$3) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "tryOpenCamera: 3000ms elapsed");
        }
        this.$timeoutJob.b = null;
        if (this.$cameraOpenDeferred.b == null) {
            return null;
        }
        if (log.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "tryOpenCamera: openCamera() timed out");
        }
        this.$cameraState.close();
        return new OpenCameraResult(null, CameraError.m276boximpl(CameraError.Companion.m293getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A()), 1, null);
    }
}
