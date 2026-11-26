package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$3$1", f = "SwipeToDismissBox.kt", l = {}, m = "invokeSuspend")
public final class SwipeToDismissBoxKt$SwipeToDismissBox$3$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3<SwipeToDismissBoxValue, j59> $onDismiss;
    final /* synthetic */ SwipeToDismissBoxState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SwipeToDismissBoxKt$SwipeToDismissBox$3$1(SwipeToDismissBoxState swipeToDismissBoxState, nl3<? super SwipeToDismissBoxValue, j59> nl3Var, e02<? super SwipeToDismissBoxKt$SwipeToDismissBox$3$1> e02Var) {
        super(2, e02Var);
        this.$state = swipeToDismissBoxState;
        this.$onDismiss = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(this.$state, this.$onDismiss, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SwipeToDismissBoxKt$SwipeToDismissBox$3$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (this.$state.getSettledValue() != SwipeToDismissBoxValue.Settled) {
            this.$onDismiss.invoke(this.$state.getDismissDirection());
        }
        return j59.a;
    }
}
