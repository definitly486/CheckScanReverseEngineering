package androidx.compose.material3;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class ClockDialNode$pointerInputTapNode$1 implements PointerInputEventHandler {
    final /* synthetic */ ClockDialNode this$0;

    /* JADX INFO: renamed from: androidx.compose.material3.ClockDialNode$pointerInputTapNode$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.ClockDialNode$pointerInputTapNode$1$1", f = "TimePicker.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements dm3<PressGestureScope, Offset, e02<? super j59>, Object> {
        /* synthetic */ long J$0;
        int label;
        final /* synthetic */ ClockDialNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ClockDialNode clockDialNode, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.this$0 = clockDialNode;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, e02<? super j59> e02Var) {
            return m3217invoked4ec7I(pressGestureScope, offset.m5997unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
        public final Object m3217invoked4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
            anonymousClass1.J$0 = j;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            long j = this.J$0;
            this.this$0.offsetX = Float.intBitsToFloat((int) (j >> 32));
            this.this$0.offsetY = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            return j59.a;
        }
    }

    public ClockDialNode$pointerInputTapNode$1(ClockDialNode clockDialNode) {
        this.this$0 = clockDialNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(ClockDialNode clockDialNode, Offset offset) {
        av0.c(clockDialNode.getCoroutineScope(), null, null, new ClockDialNode$pointerInputTapNode$1$2$1(clockDialNode, offset, null), 3);
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        Object objDetectTapGestures$default = TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, new AnonymousClass1(this.this$0, null), new v(this.this$0, 0), e02Var, 3, null);
        return objDetectTapGestures$default == a32.COROUTINE_SUSPENDED ? objDetectTapGestures$default : j59.a;
    }
}
