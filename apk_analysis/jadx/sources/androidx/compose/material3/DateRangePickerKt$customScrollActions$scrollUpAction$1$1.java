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
@bd2(c = "androidx.compose.material3.DateRangePickerKt$customScrollActions$scrollUpAction$1$1", f = "DateRangePicker.kt", l = {1092}, m = "invokeSuspend")
public final class DateRangePickerKt$customScrollActions$scrollUpAction$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ LazyListState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateRangePickerKt$customScrollActions$scrollUpAction$1$1(LazyListState lazyListState, e02<? super DateRangePickerKt$customScrollActions$scrollUpAction$1$1> e02Var) {
        super(2, e02Var);
        this.$state = lazyListState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DateRangePickerKt$customScrollActions$scrollUpAction$1$1(this.$state, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DateRangePickerKt$customScrollActions$scrollUpAction$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            LazyListState lazyListState = this.$state;
            int firstVisibleItemIndex = lazyListState.getFirstVisibleItemIndex() - 1;
            this.label = 1;
            if (LazyListState.scrollToItem$default(lazyListState, firstVisibleItemIndex, 0, this, 2, null) == a32Var) {
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
