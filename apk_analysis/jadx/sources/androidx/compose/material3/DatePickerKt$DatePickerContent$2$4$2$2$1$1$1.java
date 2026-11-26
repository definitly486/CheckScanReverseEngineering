package androidx.compose.material3;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.internal.CalendarMonth;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$2$4$2$2$1$1$1", f = "DatePicker.kt", l = {1653}, m = "invokeSuspend")
public final class DatePickerKt$DatePickerContent$2$4$2$2$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ CalendarMonth $displayedMonth;
    final /* synthetic */ LazyListState $monthsListState;
    final /* synthetic */ int $year;
    final /* synthetic */ y74 $yearRange;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatePickerKt$DatePickerContent$2$4$2$2$1$1$1(LazyListState lazyListState, int i, y74 y74Var, CalendarMonth calendarMonth, e02<? super DatePickerKt$DatePickerContent$2$4$2$2$1$1$1> e02Var) {
        super(2, e02Var);
        this.$monthsListState = lazyListState;
        this.$year = i;
        this.$yearRange = y74Var;
        this.$displayedMonth = calendarMonth;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DatePickerKt$DatePickerContent$2$4$2$2$1$1$1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DatePickerKt$DatePickerContent$2$4$2$2$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            LazyListState lazyListState = this.$monthsListState;
            int month = (this.$displayedMonth.getMonth() + ((this.$year - this.$yearRange.b) * 12)) - 1;
            this.label = 1;
            if (LazyListState.scrollToItem$default(lazyListState, month, 0, this, 2, null) == a32Var) {
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
