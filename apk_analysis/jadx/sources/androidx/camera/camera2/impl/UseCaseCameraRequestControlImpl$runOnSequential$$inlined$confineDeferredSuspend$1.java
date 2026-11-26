package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
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
import defpackage.xp1;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1", f = "UseCaseCameraRequestControl.kt", l = {152}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3 $block;
    final /* synthetic */ xp1 $signal;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1(nl3 nl3Var, xp1 xp1Var, e02 e02Var) {
        super(2, e02Var);
        this.$block = nl3Var;
        this.$signal = xp1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1(this.$block, this.$signal, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            nl3 nl3Var = this.$block;
            this.label = 1;
            obj = nl3Var.invoke(this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        CoroutineAdaptersKt.propagateTo((mk2) obj, this.$signal);
        return j59.a;
    }
}
