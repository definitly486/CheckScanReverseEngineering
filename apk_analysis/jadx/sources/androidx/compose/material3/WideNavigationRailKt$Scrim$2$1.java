package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
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
@bd2(c = "androidx.compose.material3.WideNavigationRailKt$Scrim$2$1", f = "WideNavigationRail.kt", l = {1130}, m = "invokeSuspend")
public final class WideNavigationRailKt$Scrim$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableState<Boolean> $dismiss$delegate;
    final /* synthetic */ nl3<e02<? super j59>, Object> $onDismissRequest;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WideNavigationRailKt$Scrim$2$1(nl3<? super e02<? super j59>, ? extends Object> nl3Var, MutableState<Boolean> mutableState, e02<? super WideNavigationRailKt$Scrim$2$1> e02Var) {
        super(2, e02Var);
        this.$onDismissRequest = nl3Var;
        this.$dismiss$delegate = mutableState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new WideNavigationRailKt$Scrim$2$1(this.$onDismissRequest, this.$dismiss$delegate, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((WideNavigationRailKt$Scrim$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (WideNavigationRailKt.Scrim_3J_VO9M$lambda$28(this.$dismiss$delegate)) {
                nl3<e02<? super j59>, Object> nl3Var = this.$onDismissRequest;
                this.label = 1;
                if (nl3Var.invoke(this) == a32Var) {
                    return a32Var;
                }
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
