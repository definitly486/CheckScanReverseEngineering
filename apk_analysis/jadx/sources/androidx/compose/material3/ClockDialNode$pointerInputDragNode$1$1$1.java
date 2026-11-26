package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
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
@bd2(c = "androidx.compose.material3.ClockDialNode$pointerInputDragNode$1$1$1", f = "TimePicker.kt", l = {1532}, m = "invokeSuspend")
public final class ClockDialNode$pointerInputDragNode$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ ClockDialNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClockDialNode$pointerInputDragNode$1$1$1(ClockDialNode clockDialNode, e02<? super ClockDialNode$pointerInputDragNode$1$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = clockDialNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ClockDialNode$pointerInputDragNode$1$1$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ClockDialNode$pointerInputDragNode$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (this.this$0.autoSwitchToMinute) {
                this.this$0.state.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
            }
            AnalogTimePickerState analogTimePickerState = this.this$0.state;
            AnimationSpec<Float> animationSpec = this.this$0.animationSpec;
            this.label = 1;
            if (analogTimePickerState.onGestureEnd(animationSpec, this) == a32Var) {
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
