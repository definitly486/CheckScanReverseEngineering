package androidx.camera.camera2.pipe.internal;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.FrameCaptureQueue$FrameCaptureImpl", f = "FrameCaptureQueue.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL}, m = "awaitFrame", v = 1)
public final class FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1 extends f02 {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FrameCaptureQueue.FrameCaptureImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1(FrameCaptureQueue.FrameCaptureImpl frameCaptureImpl, e02<? super FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1> e02Var) {
        super(e02Var);
        this.this$0 = frameCaptureImpl;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.awaitFrame(this);
    }
}
