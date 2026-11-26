package androidx.camera.camera2.pipe;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.FrameCapture$Companion", f = "Frame.kt", l = {374}, m = "useFrame", v = 1)
public final class FrameCapture$Companion$useFrame$1<R> extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FrameCapture.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameCapture$Companion$useFrame$1(FrameCapture.Companion companion, e02<? super FrameCapture$Companion$useFrame$1> e02Var) {
        super(e02Var);
        this.this$0 = companion;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.useFrame(null, null, this);
    }
}
