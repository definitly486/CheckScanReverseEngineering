package androidx.compose.material3;

import androidx.compose.animation.core.SnapSpec;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
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
@bd2(c = "androidx.compose.material3.TimePickerKt$ClockText$2$1$1$1", f = "TimePicker.kt", l = {1769}, m = "invokeSuspend")
public final class TimePickerKt$ClockText$2$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $autoSwitchToMinute;
    final /* synthetic */ MutableState<Offset> $center$delegate;
    final /* synthetic */ float $maxDist;
    final /* synthetic */ MutableState<IntOffset> $parentCenter$delegate;
    final /* synthetic */ AnalogTimePickerState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerKt$ClockText$2$1$1$1(AnalogTimePickerState analogTimePickerState, float f, boolean z, MutableState<Offset> mutableState, MutableState<IntOffset> mutableState2, e02<? super TimePickerKt$ClockText$2$1$1$1> e02Var) {
        super(2, e02Var);
        this.$state = analogTimePickerState;
        this.$maxDist = f;
        this.$autoSwitchToMinute = z;
        this.$center$delegate = mutableState;
        this.$parentCenter$delegate = mutableState2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TimePickerKt$ClockText$2$1$1$1(this.$state, this.$maxDist, this.$autoSwitchToMinute, this.$center$delegate, this.$parentCenter$delegate, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TimePickerKt$ClockText$2$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            AnalogTimePickerState analogTimePickerState = this.$state;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (TimePickerKt.ClockText$lambda$64(this.$center$delegate) >> 32));
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (TimePickerKt.ClockText$lambda$64(this.$center$delegate) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            float f = this.$maxDist;
            boolean z = this.$autoSwitchToMinute;
            long jClockText$lambda$67 = TimePickerKt.ClockText$lambda$67(this.$parentCenter$delegate);
            SnapSpec snapSpec = new SnapSpec(0, 1, null);
            this.label = 1;
            if (TimePickerKt.m4135onTapuYHVD98(analogTimePickerState, fIntBitsToFloat, fIntBitsToFloat2, f, z, jClockText$lambda$67, snapSpec, this) == a32Var) {
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
