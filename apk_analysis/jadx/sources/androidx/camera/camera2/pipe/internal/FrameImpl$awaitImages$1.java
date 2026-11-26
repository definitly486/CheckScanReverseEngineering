package androidx.camera.camera2.pipe.internal;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.FrameImpl", f = "FrameImpl.kt", l = {190}, m = "awaitImages-NYG5g8E", v = 1)
public final class FrameImpl$awaitImages$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FrameImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameImpl$awaitImages$1(FrameImpl frameImpl, e02<? super FrameImpl$awaitImages$1> e02Var) {
        super(e02Var);
        this.this$0 = frameImpl;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo435awaitImagesNYG5g8E(0, this);
    }
}
