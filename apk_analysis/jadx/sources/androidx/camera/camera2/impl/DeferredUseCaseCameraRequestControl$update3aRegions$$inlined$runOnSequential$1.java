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
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {90}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1 extends pg8 implements bm3<y22, e02<? super Result3A>, Object> {
    final /* synthetic */ List $aeRegions$inlined;
    final /* synthetic */ List $afRegions$inlined;
    final /* synthetic */ List $awbRegions$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02 e02Var, List list, List list2, List list3) {
        super(2, e02Var);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$aeRegions$inlined = list;
        this.$afRegions$inlined = list2;
        this.$awbRegions$inlined = list3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1(this.this$0, e02Var, this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Result3A> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        mk2<Result3A> mk2VarUpdate3aRegions = this.this$0.getOrCreateImpl().update3aRegions(this.$aeRegions$inlined, this.$afRegions$inlined, this.$awbRegions$inlined);
        this.label = 1;
        Object objZ = mk2VarUpdate3aRegions.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
