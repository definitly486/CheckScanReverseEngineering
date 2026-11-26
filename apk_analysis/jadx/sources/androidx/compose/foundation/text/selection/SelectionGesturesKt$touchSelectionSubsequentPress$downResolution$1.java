package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.q07;
import defpackage.qn1;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1", f = "SelectionGestures.kt", l = {195}, m = "invokeSuspend", v = 1)
public final class SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super DownResolution>, Object> {
    final /* synthetic */ q07 $overSlop;
    final /* synthetic */ long $pointerId;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(long j, q07 q07Var, e02<? super SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1> e02Var) {
        super(2, e02Var);
        this.$pointerId = j;
        this.$overSlop = q07Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(q07 q07Var, PointerInputChange pointerInputChange, Offset offset) {
        pointerInputChange.consume();
        q07Var.b = offset.m5997unboximpl();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 = new SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(this.$pointerId, this.$overSlop, e02Var);
        selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1.L$0 = obj;
        return selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super DownResolution> e02Var) {
        return ((SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
            long j = this.$pointerId;
            final q07 q07Var = this.$overSlop;
            bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.text.selection.b
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    return SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1.invokeSuspend$lambda$0(q07Var, (PointerInputChange) obj2, (Offset) obj3);
                }
            };
            this.L$0 = awaitPointerEventScope2;
            this.label = 1;
            Object objM1499awaitTouchSlopOrCancellationjO51t88 = DragGestureDetectorKt.m1499awaitTouchSlopOrCancellationjO51t88(awaitPointerEventScope2, j, bm3Var, this);
            if (objM1499awaitTouchSlopOrCancellationjO51t88 == a32Var) {
                return a32Var;
            }
            awaitPointerEventScope = awaitPointerEventScope2;
            obj = objM1499awaitTouchSlopOrCancellationjO51t88;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
            r57.b(obj);
        }
        if (((PointerInputChange) obj) != null && (this.$overSlop.b & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            return DownResolution.Drag;
        }
        PointerInputChange pointerInputChange = (PointerInputChange) qn1.T(awaitPointerEventScope.getCurrentEvent().getChanges());
        if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            return DownResolution.Cancel;
        }
        pointerInputChange.consume();
        return DownResolution.Up;
    }
}
