package androidx.camera.camera2.impl;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1", f = "CapturePipeline.kt", l = {210, 246, WebmConstants.MkvEbmlElement.CUE_TRACK}, m = "invokeSuspend", v = 1)
public final class CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ List $deferredList$inlined;
    final /* synthetic */ List $requests$inlined;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1(e02 e02Var, CapturePipelineImpl capturePipelineImpl, List list, List list2) {
        super(2, e02Var);
        this.this$0 = capturePipelineImpl;
        this.$deferredList$inlined = list;
        this.$requests$inlined = list2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1(e02Var, this.this$0, this.$deferredList$inlined, this.$requests$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b5, code lost:
    
        if (r11.tryStartRepeating(r10) == r1) goto L39;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
