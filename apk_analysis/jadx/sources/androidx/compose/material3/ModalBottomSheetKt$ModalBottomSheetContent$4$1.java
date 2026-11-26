package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$4$1", f = "ModalBottomSheet.kt", l = {}, m = "invokeSuspend")
public final class ModalBottomSheetKt$ModalBottomSheetContent$4$1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
    final /* synthetic */ nl3<Float, j59> $settleToDismiss;
    /* synthetic */ float F$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3<? super Float, j59> nl3Var, e02<? super ModalBottomSheetKt$ModalBottomSheetContent$4$1> e02Var) {
        super(3, e02Var);
        this.$settleToDismiss = nl3Var;
    }

    public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
        ModalBottomSheetKt$ModalBottomSheetContent$4$1 modalBottomSheetKt$ModalBottomSheetContent$4$1 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(this.$settleToDismiss, e02Var);
        modalBottomSheetKt$ModalBottomSheetContent$4$1.F$0 = f;
        return modalBottomSheetKt$ModalBottomSheetContent$4$1.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$settleToDismiss.invoke(new Float(this.F$0));
        return j59.a;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
        return invoke(y22Var, f.floatValue(), e02Var);
    }
}
