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

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.TimePickerKt$TimePickerTextField$2$1", f = "TimePicker.kt", l = {}, m = "invokeSuspend")
public final class TimePickerKt$TimePickerTextField$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ int $selection;
    final /* synthetic */ TimePickerState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerKt$TimePickerTextField$2$1(TimePickerState timePickerState, int i, FocusRequester focusRequester, e02<? super TimePickerKt$TimePickerTextField$2$1> e02Var) {
        super(2, e02Var);
        this.$state = timePickerState;
        this.$selection = i;
        this.$focusRequester = focusRequester;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TimePickerKt$TimePickerTextField$2$1(this.$state, this.$selection, this.$focusRequester, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TimePickerKt$TimePickerTextField$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (TimePickerSelectionMode.m4151equalsimpl0(this.$state.mo3075getSelectionyecRtBI(), this.$selection)) {
            FocusRequester.m5892requestFocus3ESFkO8$default(this.$focusRequester, 0, 1, null);
        }
        return j59.a;
    }
}
