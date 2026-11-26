package androidx.camera.camera2.impl;

import androidx.camera.core.impl.Config;
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
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {90}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Config.OptionPriority $optionPriority$inlined;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type$inlined;
    final /* synthetic */ Map $values$inlined;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02 e02Var, Map map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        super(2, e02Var);
        this.this$0 = deferredUseCaseCameraRequestControl;
        this.$values$inlined = map;
        this.$type$inlined = type;
        this.$optionPriority$inlined = optionPriority;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1(this.this$0, e02Var, this.$values$inlined, this.$type$inlined, this.$optionPriority$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        mk2<j59> parametersAsync = this.this$0.getOrCreateImpl().setParametersAsync(this.$values$inlined, this.$type$inlined, this.$optionPriority$inlined);
        this.label = 1;
        Object objZ = parametersAsync.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
