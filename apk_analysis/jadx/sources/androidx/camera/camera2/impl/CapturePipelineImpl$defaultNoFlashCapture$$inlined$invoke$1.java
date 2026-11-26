package androidx.camera.camera2.impl;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1", f = "CapturePipeline.kt", l = {312, 885}, m = "invokeSuspend", v = 1)
public final class CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ List $captureSignal;
    final /* synthetic */ boolean $lock3ARequired$inlined;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(List list, e02 e02Var, boolean z, CapturePipelineImpl capturePipelineImpl) {
        super(2, e02Var);
        this.$captureSignal = list;
        this.$lock3ARequired$inlined = z;
        this.this$0 = capturePipelineImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(this.$captureSignal, e02Var, this.$lock3ARequired$inlined, this.this$0);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
    
        if (r8.unlockAf(r5, r7) == r0) goto L26;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 2
            r3 = 1
            java.lang.String r4 = "CXCP"
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L19
            if (r1 != r2) goto L12
            defpackage.r57.b(r8)
            goto L71
        L12:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L19:
            defpackage.r57.b(r8)
            goto L3e
        L1d:
            defpackage.r57.b(r8)
            androidx.camera.camera2.impl.Camera2Logger r8 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r8 = androidx.camera.core.Logger.isDebugEnabled(r4)
            if (r8 == 0) goto L31
            java.lang.String r8 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"
            android.util.Log.d(r8, r1)
        L31:
            java.util.List r8 = r7.$captureSignal
            java.util.Collection r8 = (java.util.Collection) r8
            r7.label = r3
            java.lang.Object r8 = defpackage.oz.b(r8, r7)
            if (r8 != r0) goto L3e
            goto L70
        L3e:
            androidx.camera.camera2.impl.Camera2Logger r8 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r8 = androidx.camera.core.Logger.isDebugEnabled(r4)
            if (r8 == 0) goto L4f
            java.lang.String r8 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"
            android.util.Log.d(r8, r1)
        L4f:
            boolean r8 = r7.$lock3ARequired$inlined
            if (r8 == 0) goto L82
            boolean r8 = androidx.camera.core.Logger.isDebugEnabled(r4)
            if (r8 == 0) goto L62
            java.lang.String r8 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "CapturePipeline#defaultNoFlashCapture: Unlocking 3A"
            android.util.Log.d(r8, r1)
        L62:
            androidx.camera.camera2.impl.CapturePipelineImpl r8 = r7.this$0
            long r5 = androidx.camera.camera2.impl.CapturePipelineKt.access$getCHECK_3A_TIMEOUT_IN_NS$p()
            r7.label = r2
            java.lang.Object r7 = androidx.camera.camera2.impl.CapturePipelineImpl.access$unlockAf(r8, r5, r7)
            if (r7 != r0) goto L71
        L70:
            return r0
        L71:
            androidx.camera.camera2.impl.Camera2Logger r7 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r7 = androidx.camera.core.Logger.isDebugEnabled(r4)
            if (r7 == 0) goto L82
            java.lang.String r7 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r8 = "CapturePipeline#defaultNoFlashCapture: Unlocking 3A done"
            android.util.Log.d(r7, r8)
        L82:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
