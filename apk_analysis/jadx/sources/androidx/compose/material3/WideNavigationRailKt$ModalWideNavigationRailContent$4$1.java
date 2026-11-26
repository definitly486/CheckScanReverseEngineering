package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$4$1", f = "WideNavigationRail.kt", l = {1042}, m = "invokeSuspend")
public final class WideNavigationRailKt$ModalWideNavigationRailContent$4$1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
    final /* synthetic */ bm3<Float, e02<? super j59>, Object> $settleToDismiss;
    /* synthetic */ float F$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WideNavigationRailKt$ModalWideNavigationRailContent$4$1(bm3<? super Float, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super WideNavigationRailKt$ModalWideNavigationRailContent$4$1> e02Var) {
        super(3, e02Var);
        this.$settleToDismiss = bm3Var;
    }

    public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
        WideNavigationRailKt$ModalWideNavigationRailContent$4$1 wideNavigationRailKt$ModalWideNavigationRailContent$4$1 = new WideNavigationRailKt$ModalWideNavigationRailContent$4$1(this.$settleToDismiss, e02Var);
        wideNavigationRailKt$ModalWideNavigationRailContent$4$1.F$0 = f;
        return wideNavigationRailKt$ModalWideNavigationRailContent$4$1.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            float f = this.F$0;
            bm3<Float, e02<? super j59>, Object> bm3Var = this.$settleToDismiss;
            Float f2 = new Float(f);
            this.label = 1;
            if (bm3Var.invoke(f2, this) == a32Var) {
                return a32Var;
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

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
        return invoke(y22Var, f.floatValue(), e02Var);
    }
}
