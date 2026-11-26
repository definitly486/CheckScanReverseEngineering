package androidx.camera.camera2.impl;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1", f = "CapturePipeline.kt", l = {312, 879}, m = "invokeSuspend", v = 1)
public final class CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSignal;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(List list, e02 e02Var, CapturePipelineImpl capturePipelineImpl, int i) {
        super(2, e02Var);
        this.$captureSignal = list;
        this.this$0 = capturePipelineImpl;
        this.$captureMode$inlined = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(this.$captureSignal, e02Var, this.this$0, this.$captureMode$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        if (r6.invokeScreenFlashPostCaptureTasks(r1, r5) == r0) goto L21;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            java.lang.String r2 = "CXCP"
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            defpackage.r57.b(r6)
            goto L5c
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L19:
            defpackage.r57.b(r6)
            goto L3e
        L1d:
            defpackage.r57.b(r6)
            androidx.camera.camera2.impl.Camera2Logger r6 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r6 = androidx.camera.core.Logger.isDebugEnabled(r2)
            if (r6 == 0) goto L31
            java.lang.String r6 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"
            android.util.Log.d(r6, r1)
        L31:
            java.util.List r6 = r5.$captureSignal
            java.util.Collection r6 = (java.util.Collection) r6
            r5.label = r4
            java.lang.Object r6 = defpackage.oz.b(r6, r5)
            if (r6 != r0) goto L3e
            goto L5b
        L3e:
            androidx.camera.camera2.impl.Camera2Logger r6 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r6 = androidx.camera.core.Logger.isDebugEnabled(r2)
            if (r6 == 0) goto L4f
            java.lang.String r6 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"
            android.util.Log.d(r6, r1)
        L4f:
            androidx.camera.camera2.impl.CapturePipelineImpl r6 = r5.this$0
            int r1 = r5.$captureMode$inlined
            r5.label = r3
            java.lang.Object r5 = r6.invokeScreenFlashPostCaptureTasks(r1, r5)
            if (r5 != r0) goto L5c
        L5b:
            return r0
        L5c:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
