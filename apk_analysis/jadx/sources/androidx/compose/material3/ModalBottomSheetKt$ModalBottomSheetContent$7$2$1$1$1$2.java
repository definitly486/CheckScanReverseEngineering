package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2", f = "ModalBottomSheet.kt", l = {390}, m = "invokeSuspend")
public final class ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ SheetState $sheetState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2(SheetState sheetState, e02<? super ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2> e02Var) {
        super(2, e02Var);
        this.$sheetState = sheetState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2(this.$sheetState, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            SheetState sheetState = this.$sheetState;
            this.label = 1;
            if (sheetState.show(this) == a32Var) {
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
}
