package androidx.camera.camera2.compat.workaround;

import androidx.media3.container.MdtaMetadataEntry;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection", f = "CapturePipelineTorchCorrection.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "submitStillCaptures-BvXKQx0", v = 1)
public final class CapturePipelineTorchCorrection$submitStillCaptures$1 extends f02 {
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineTorchCorrection$submitStillCaptures$1(CapturePipelineTorchCorrection capturePipelineTorchCorrection, e02<? super CapturePipelineTorchCorrection$submitStillCaptures$1> e02Var) {
        super(e02Var);
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo32submitStillCapturesBvXKQx0(null, 0, null, 0, 0, 0, this);
    }
}
