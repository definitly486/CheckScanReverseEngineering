package androidx.camera.camera2.impl;

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
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1 extends pg8 implements bm3<y22, e02<? super List<? extends mk2<? extends Void>>>, Object> {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSequence$inlined;
    final /* synthetic */ int $flashMode$inlined;
    final /* synthetic */ int $flashType$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02 e02Var, List list, int i, int i2, int i3) {
        super(2, e02Var);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$captureSequence$inlined = list;
        this.$captureMode$inlined = i;
        this.$flashType$inlined = i2;
        this.$flashMode$inlined = i3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1(this.this$0, e02Var, this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super List<? extends mk2<? extends Void>>> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.this$0.getOrCreateImpl().issueSingleCaptureAsync(this.$captureSequence$inlined, this.$captureMode$inlined, this.$flashType$inlined, this.$flashMode$inlined);
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
