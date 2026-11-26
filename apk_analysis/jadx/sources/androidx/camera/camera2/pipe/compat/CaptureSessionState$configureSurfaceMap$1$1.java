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
@bd2(c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$configureSurfaceMap$1$1", f = "CaptureSessionState.kt", l = {}, m = "invokeSuspend", v = 1)
public final class CaptureSessionState$configureSurfaceMap$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ CaptureSessionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureSessionState$configureSurfaceMap$1$1(CaptureSessionState captureSessionState, e02<? super CaptureSessionState$configureSurfaceMap$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = captureSessionState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CaptureSessionState$configureSurfaceMap$1$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CaptureSessionState$configureSurfaceMap$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        CaptureSessionState.finalizeOutputsIfAvailable$default(this.this$0, false, 1, null);
        return j59.a;
    }
}
