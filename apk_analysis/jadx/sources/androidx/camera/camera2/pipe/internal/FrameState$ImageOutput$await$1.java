package androidx.camera.camera2.pipe.internal;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.FrameState$ImageOutput", f = "FrameState.kt", l = {275}, m = "await", v = 1)
public final class FrameState$ImageOutput$await$1 extends f02 {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FrameState.ImageOutput this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameState$ImageOutput$await$1(FrameState.ImageOutput imageOutput, e02<? super FrameState$ImageOutput$await$1> e02Var) {
        super(e02Var);
        this.this$0 = imageOutput;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.await(this);
    }
}
