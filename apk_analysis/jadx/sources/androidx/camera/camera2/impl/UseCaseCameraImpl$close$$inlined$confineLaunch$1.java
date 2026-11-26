package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionProcessor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraImpl$close$$inlined$confineLaunch$1", f = "UseCaseCamera.kt", l = {208}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraImpl$close$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$close$$inlined$confineLaunch$1(e02 e02Var, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, e02Var);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseCameraImpl$close$$inlined$confineLaunch$1(e02Var, this.this$0);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseCameraImpl$close$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Closing " + this.this$0);
            }
            SessionProcessor sessionProcessor = this.this$0.sessionProcessor;
            if (sessionProcessor != null) {
                sessionProcessor.setCaptureSessionRequestProcessor(null);
            }
            this.this$0.useCaseGraphContext.closeGraph();
            mk2<j59> mk2VarStopAsync = this.this$0.getUseCaseSurfaceManager().stopAsync();
            this.label = 1;
            if (mk2VarStopAsync.Z(this) == a32Var) {
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
