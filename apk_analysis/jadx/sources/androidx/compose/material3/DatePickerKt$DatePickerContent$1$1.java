package androidx.compose.material3;

import androidx.compose.foundation.lazy.LazyListState;
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
@bd2(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$1", f = "DatePicker.kt", l = {1552}, m = "invokeSuspend")
public final class DatePickerKt$DatePickerContent$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ int $monthIndex;
    final /* synthetic */ LazyListState $monthsListState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatePickerKt$DatePickerContent$1$1(LazyListState lazyListState, int i, e02<? super DatePickerKt$DatePickerContent$1$1> e02Var) {
        super(2, e02Var);
        this.$monthsListState = lazyListState;
        this.$monthIndex = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DatePickerKt$DatePickerContent$1$1(this.$monthsListState, this.$monthIndex, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DatePickerKt$DatePickerContent$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (!this.$monthsListState.isScrollInProgress()) {
                int firstVisibleItemIndex = this.$monthsListState.getFirstVisibleItemIndex();
                int i2 = this.$monthIndex;
                if (firstVisibleItemIndex != i2) {
                    LazyListState lazyListState = this.$monthsListState;
                    this.label = 1;
                    if (LazyListState.scrollToItem$default(lazyListState, i2, 0, this, 2, null) == a32Var) {
                        return a32Var;
                    }
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
