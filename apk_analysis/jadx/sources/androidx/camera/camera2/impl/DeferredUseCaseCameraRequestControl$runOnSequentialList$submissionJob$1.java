package androidx.camera.camera2.impl;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1<T> extends pg8 implements bm3<y22, e02<? super List<? extends mk2<? extends T>>>, Object> {
    final /* synthetic */ nl3<UseCaseCameraRequestControl, List<mk2<T>>> $action;
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1(nl3<? super UseCaseCameraRequestControl, ? extends List<? extends mk2<? extends T>>> nl3Var, DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02<? super DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1> e02Var) {
        super(2, e02Var);
        this.$action = nl3Var;
        this.this$0 = deferredUseCaseCameraRequestControl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1(this.$action, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super List<? extends mk2<? extends T>>> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.$action.invoke(this.this$0.getOrCreateImpl());
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        return this.$action.invoke(this.this$0.getOrCreateImpl());
    }
}
