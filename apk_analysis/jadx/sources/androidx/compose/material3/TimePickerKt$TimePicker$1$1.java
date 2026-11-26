package androidx.compose.material3;

import androidx.compose.ui.node.Ref;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.TimePickerKt$TimePicker$1$1", f = "TimePicker.kt", l = {}, m = "invokeSuspend")
public final class TimePickerKt$TimePicker$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ AnalogTimePickerState $analogState;
    final /* synthetic */ TimePickerState $state;
    final /* synthetic */ Ref<Boolean> $userOverride;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerKt$TimePicker$1$1(Ref<Boolean> ref, AnalogTimePickerState analogTimePickerState, TimePickerState timePickerState, e02<? super TimePickerKt$TimePicker$1$1> e02Var) {
        super(2, e02Var);
        this.$userOverride = ref;
        this.$analogState = analogTimePickerState;
        this.$state = timePickerState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TimePickerKt$TimePicker$1$1(this.$userOverride, this.$analogState, this.$state, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TimePickerKt$TimePicker$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Boolean value = this.$userOverride.getValue();
        Boolean bool = Boolean.TRUE;
        if (aa4.e(value, bool)) {
            this.$analogState.setHour(this.$state.getHour());
            this.$analogState.setMinute(this.$state.getMinute());
        }
        this.$userOverride.setValue(bool);
        return j59.a;
    }
}
