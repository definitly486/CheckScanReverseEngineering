package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.FrameInfo;
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
@bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$resultListener$1$1", f = "CapturePipeline.kt", l = {788}, m = "invokeSuspend", v = 1)
public final class CapturePipelineImpl$waitForResult$resultListener$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ ResultListener $listener;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$waitForResult$resultListener$1$1(ResultListener resultListener, CapturePipelineImpl capturePipelineImpl, e02<? super CapturePipelineImpl$waitForResult$resultListener$1$1> e02Var) {
        super(2, e02Var);
        this.$listener = resultListener;
        this.this$0 = capturePipelineImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineImpl$waitForResult$resultListener$1$1(this.$listener, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineImpl$waitForResult$resultListener$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            mk2<FrameInfo> result = this.$listener.getResult();
            this.label = 1;
            if (result.e0(this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.this$0.requestListener.removeListener(this.$listener);
        return j59.a;
    }
}
