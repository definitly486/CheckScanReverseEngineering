package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.Result3A;
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

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {90}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1 extends pg8 implements bm3<y22, e02<? super Result3A>, Object> {
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02 e02Var) {
        super(2, e02Var);
        this.this$0 = deferredUseCaseCameraRequestControl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Result3A> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        mk2<Result3A> torchOnAsync = this.this$0.getOrCreateImpl().setTorchOnAsync();
        this.label = 1;
        Object objZ = torchOnAsync.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
