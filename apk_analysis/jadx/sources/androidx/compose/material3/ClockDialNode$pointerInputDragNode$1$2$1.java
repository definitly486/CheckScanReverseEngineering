package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
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
@bd2(c = "androidx.compose.material3.ClockDialNode$pointerInputDragNode$1$2$1", f = "TimePicker.kt", l = {1539}, m = "invokeSuspend")
public final class ClockDialNode$pointerInputDragNode$1$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Offset $dragAmount;
    int label;
    final /* synthetic */ ClockDialNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClockDialNode$pointerInputDragNode$1$2$1(ClockDialNode clockDialNode, Offset offset, e02<? super ClockDialNode$pointerInputDragNode$1$2$1> e02Var) {
        super(2, e02Var);
        this.this$0 = clockDialNode;
        this.$dragAmount = offset;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ClockDialNode$pointerInputDragNode$1$2$1(this.this$0, this.$dragAmount, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ClockDialNode$pointerInputDragNode$1$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        ClockDialNode$pointerInputDragNode$1$2$1 clockDialNode$pointerInputDragNode$1$2$1;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            ClockDialNode clockDialNode = this.this$0;
            clockDialNode.offsetX = Float.intBitsToFloat((int) (this.$dragAmount.m5997unboximpl() >> 32)) + clockDialNode.offsetX;
            ClockDialNode clockDialNode2 = this.this$0;
            clockDialNode2.offsetY = Float.intBitsToFloat((int) (this.$dragAmount.m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + clockDialNode2.offsetY;
            AnalogTimePickerState analogTimePickerState = this.this$0.state;
            float fAtan = TimePickerKt.atan(this.this$0.offsetY - IntOffset.m9171getYimpl(this.this$0.m3214getCenternOccac()), this.this$0.offsetX - IntOffset.m9170getXimpl(this.this$0.m3214getCenternOccac()));
            AnimationSpec animationSpec = this.this$0.animationSpec;
            this.label = 1;
            clockDialNode$pointerInputDragNode$1$2$1 = this;
            if (AnalogTimePickerState.rotateTo$default(analogTimePickerState, fAtan, animationSpec, false, clockDialNode$pointerInputDragNode$1$2$1, 4, null) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            clockDialNode$pointerInputDragNode$1$2$1 = this;
        }
        TimePickerKt.m4133moveSelectord3b8Pxo(clockDialNode$pointerInputDragNode$1$2$1.this$0.state, clockDialNode$pointerInputDragNode$1$2$1.this$0.offsetX, clockDialNode$pointerInputDragNode$1$2$1.this$0.offsetY, clockDialNode$pointerInputDragNode$1$2$1.this$0.getMaxDist(), clockDialNode$pointerInputDragNode$1$2$1.this$0.m3214getCenternOccac());
        return j59.a;
    }
}
