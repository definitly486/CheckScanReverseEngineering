package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.lifecycle.compose.RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1", f = "RememberLifecycleOwner.kt", l = {}, m = "invokeSuspend", v = 1)
public final class RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ ComposeLifecycleOwner $localLifecycleOwner;
    final /* synthetic */ Lifecycle.State $maxLifecycle;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(ComposeLifecycleOwner composeLifecycleOwner, Lifecycle.State state, e02<? super RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1> e02Var) {
        super(2, e02Var);
        this.$localLifecycleOwner = composeLifecycleOwner;
        this.$maxLifecycle = state;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(this.$localLifecycleOwner, this.$maxLifecycle, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$localLifecycleOwner.setMaxLifecycleState(this.$maxLifecycle);
        return j59.a;
    }
}
