package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
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
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1", f = "UseCaseCamera.kt", l = {}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $enabled$inlined;
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(e02 e02Var, UseCaseCameraImpl useCaseCameraImpl, boolean z) {
        super(2, e02Var);
        this.this$0 = useCaseCameraImpl;
        this.$enabled$inlined = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(e02Var, this.this$0, this.$enabled$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (this.this$0.closed.b()) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCamera is closed before setActiveResumeMode, skipping setup.");
            }
        } else {
            this.this$0.useCaseGraphContext.getGraph().setForeground(this.$enabled$inlined);
        }
        return j59.a;
    }
}
