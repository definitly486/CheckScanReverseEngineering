package androidx.compose.material3;

import androidx.compose.ui.focus.FocusRequester;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DateInputKt$DateInputTextField$4$1", f = "DateInput.kt", l = {233}, m = "invokeSuspend")
public final class DateInputKt$DateInputTextField$4$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ FocusRequester $focusRequester;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateInputKt$DateInputTextField$4$1(FocusRequester focusRequester, e02<? super DateInputKt$DateInputTextField$4$1> e02Var) {
        super(2, e02Var);
        this.$focusRequester = focusRequester;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DateInputKt$DateInputTextField$4$1(this.$focusRequester, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DateInputKt$DateInputTextField$4$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (this.$focusRequester != null) {
                this.label = 1;
                if (yk2.b(300L, this) == a32Var) {
                    return a32Var;
                }
            }
            return j59.a;
        }
        if (i != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        FocusRequester.m5892requestFocus3ESFkO8$default(this.$focusRequester, 0, 1, null);
        return j59.a;
    }
}
