package androidx.compose.material3;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.internal.CalendarModel;
import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$2$1", f = "DateRangePicker.kt", l = {TypedValues.Custom.TYPE_FLOAT}, m = "invokeSuspend")
public final class DateRangePickerKt$VerticalMonthsList$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ CalendarModel $calendarModel;
    final /* synthetic */ LazyListState $lazyListState;
    final /* synthetic */ nl3<Long, j59> $onDisplayedMonthChange;
    final /* synthetic */ y74 $yearRange;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DateRangePickerKt$VerticalMonthsList$2$1(LazyListState lazyListState, nl3<? super Long, j59> nl3Var, CalendarModel calendarModel, y74 y74Var, e02<? super DateRangePickerKt$VerticalMonthsList$2$1> e02Var) {
        super(2, e02Var);
        this.$lazyListState = lazyListState;
        this.$onDisplayedMonthChange = nl3Var;
        this.$calendarModel = calendarModel;
        this.$yearRange = y74Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DateRangePickerKt$VerticalMonthsList$2$1(this.$lazyListState, this.$onDisplayedMonthChange, this.$calendarModel, this.$yearRange, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DateRangePickerKt$VerticalMonthsList$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            LazyListState lazyListState = this.$lazyListState;
            nl3<Long, j59> nl3Var = this.$onDisplayedMonthChange;
            CalendarModel calendarModel = this.$calendarModel;
            y74 y74Var = this.$yearRange;
            this.label = 1;
            if (DatePickerKt.updateDisplayedMonth(lazyListState, nl3Var, calendarModel, y74Var, this) == a32Var) {
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
