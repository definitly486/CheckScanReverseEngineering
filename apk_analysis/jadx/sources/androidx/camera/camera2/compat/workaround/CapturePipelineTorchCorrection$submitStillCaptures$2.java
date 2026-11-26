package androidx.camera.camera2.compat.workaround;

import androidx.media3.extractor.ts.TsExtractor;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$submitStillCaptures$2", f = "CapturePipelineTorchCorrection.kt", l = {86, 88, TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", v = 1)
public final class CapturePipelineTorchCorrection$submitStillCaptures$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ List<mk2<Void>> $deferredResults;
    int label;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CapturePipelineTorchCorrection$submitStillCaptures$2(List<? extends mk2<Void>> list, CapturePipelineTorchCorrection capturePipelineTorchCorrection, e02<? super CapturePipelineTorchCorrection$submitStillCaptures$2> e02Var) {
        super(2, e02Var);
        this.$deferredResults = list;
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineTorchCorrection$submitStillCaptures$2(this.$deferredResults, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineTorchCorrection$submitStillCaptures$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
    
        if (r12.e0(r11) == r0) goto L23;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r11.label
            java.lang.String r2 = "CXCP"
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L24
            if (r1 == r5) goto L20
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L15
            defpackage.r57.b(r12)
            goto L7f
        L15:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r11)
            r11 = 0
            return r11
        L1c:
            defpackage.r57.b(r12)
            goto L62
        L20:
            defpackage.r57.b(r12)
            goto L34
        L24:
            defpackage.r57.b(r12)
            java.util.List<mk2<java.lang.Void>> r12 = r11.$deferredResults
            java.util.Collection r12 = (java.util.Collection) r12
            r11.label = r5
            java.lang.Object r12 = defpackage.oz.b(r12, r11)
            if (r12 != r0) goto L34
            goto L7e
        L34:
            androidx.camera.camera2.impl.Camera2Logger r12 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r12 = androidx.camera.core.Logger.isDebugEnabled(r2)
            if (r12 == 0) goto L45
            java.lang.String r12 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r1 = "Re-enable Torch to correct the Torch state"
            android.util.Log.d(r12, r1)
        L45:
            androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection r12 = r11.this$0
            androidx.camera.camera2.impl.TorchControl r5 = androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection.access$getTorchControl$p(r12)
            androidx.camera.camera2.impl.TorchControl$TorchMode$Companion r12 = androidx.camera.camera2.impl.TorchControl.TorchMode.Companion
            int r6 = r12.m85getOFFIRs_R8()
            r9 = 6
            r10 = 0
            r7 = 0
            r8 = 0
            mk2 r12 = androidx.camera.camera2.impl.TorchControl.m73setTorchAsyncOup_wC0$camera_camera2$default(r5, r6, r7, r8, r9, r10)
            r11.label = r4
            java.lang.Object r12 = r12.e0(r11)
            if (r12 != r0) goto L62
            goto L7e
        L62:
            androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection r12 = r11.this$0
            androidx.camera.camera2.impl.TorchControl r4 = androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection.access$getTorchControl$p(r12)
            androidx.camera.camera2.impl.TorchControl$TorchMode$Companion r12 = androidx.camera.camera2.impl.TorchControl.TorchMode.Companion
            int r5 = r12.m87getUSED_AS_FLASHIRs_R8()
            r8 = 6
            r9 = 0
            r6 = 0
            r7 = 0
            mk2 r12 = androidx.camera.camera2.impl.TorchControl.m73setTorchAsyncOup_wC0$camera_camera2$default(r4, r5, r6, r7, r8, r9)
            r11.label = r3
            java.lang.Object r11 = r12.e0(r11)
            if (r11 != r0) goto L7f
        L7e:
            return r0
        L7f:
            androidx.camera.camera2.impl.Camera2Logger r11 = androidx.camera.camera2.impl.Camera2Logger.INSTANCE
            boolean r11 = androidx.camera.core.Logger.isDebugEnabled(r2)
            if (r11 == 0) goto L90
            java.lang.String r11 = androidx.camera.camera2.impl.Camera2Logger.access$getTRUNCATED_TAG$p()
            java.lang.String r12 = "Re-enable Torch to correct the Torch state, done"
            android.util.Log.d(r11, r12)
        L90:
            j59 r11 = defpackage.j59.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$submitStillCaptures$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
