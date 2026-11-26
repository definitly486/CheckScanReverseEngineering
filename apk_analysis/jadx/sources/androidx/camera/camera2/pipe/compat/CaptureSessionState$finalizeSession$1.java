package androidx.camera.camera2.pipe.compat;

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
import defpackage.yk2;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$finalizeSession$1", f = "CaptureSessionState.kt", l = {475}, m = "invokeSuspend", v = 1)
public final class CaptureSessionState$finalizeSession$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ long $delayMs;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CaptureSessionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureSessionState$finalizeSession$1(long j, CaptureSessionState captureSessionState, e02<? super CaptureSessionState$finalizeSession$1> e02Var) {
        super(2, e02Var);
        this.$delayMs = j;
        this.this$0 = captureSessionState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CaptureSessionState$finalizeSession$1 captureSessionState$finalizeSession$1 = new CaptureSessionState$finalizeSession$1(this.$delayMs, this.this$0, e02Var);
        captureSessionState$finalizeSession$1.L$0 = obj;
        return captureSessionState$finalizeSession$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CaptureSessionState$finalizeSession$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            Log log = Log.INSTANCE;
            long j = this.$delayMs;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Finalizing " + y22Var + " in " + j + " ms");
            }
            long j2 = this.$delayMs;
            this.label = 1;
            if (yk2.b(j2, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.this$0.finalizeSession$camera_camera2_pipe(0L);
        return j59.a;
    }
}
