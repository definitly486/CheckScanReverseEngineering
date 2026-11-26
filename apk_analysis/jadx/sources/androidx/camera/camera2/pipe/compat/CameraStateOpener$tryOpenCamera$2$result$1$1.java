package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$1", f = "RetryingCameraStateOpener.kt", l = {}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2$result$1$1 extends pg8 implements bm3<OpenCameraResult, e02<? super OpenCameraResult>, Object> {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ r07<mk2<OpenCameraResult>> $cameraOpenDeferred;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$1(r07<mk2<OpenCameraResult>> r07Var, String str, e02<? super CameraStateOpener$tryOpenCamera$2$result$1$1> e02Var) {
        super(2, e02Var);
        this.$cameraOpenDeferred = r07Var;
        this.$cameraId = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraStateOpener$tryOpenCamera$2$result$1$1 cameraStateOpener$tryOpenCamera$2$result$1$1 = new CameraStateOpener$tryOpenCamera$2$result$1$1(this.$cameraOpenDeferred, this.$cameraId, e02Var);
        cameraStateOpener$tryOpenCamera$2$result$1$1.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$result$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(OpenCameraResult openCameraResult, e02<? super OpenCameraResult> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$1) create(openCameraResult, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        OpenCameraResult openCameraResult = (OpenCameraResult) this.L$0;
        Log log = Log.INSTANCE;
        String str = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "tryOpenCamera: openCamera() for " + ((Object) CameraId.m357toStringimpl(str)) + " returned");
        }
        this.$cameraOpenDeferred.b = null;
        return openCameraResult;
    }
}
