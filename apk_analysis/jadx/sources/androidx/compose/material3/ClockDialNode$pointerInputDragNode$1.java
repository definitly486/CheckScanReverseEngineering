package androidx.compose.material3;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.av0;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class ClockDialNode$pointerInputDragNode$1 implements PointerInputEventHandler {
    final /* synthetic */ ClockDialNode this$0;

    public ClockDialNode$pointerInputDragNode$1(ClockDialNode clockDialNode) {
        this.this$0 = clockDialNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(ClockDialNode clockDialNode) {
        av0.c(clockDialNode.getCoroutineScope(), null, null, new ClockDialNode$pointerInputDragNode$1$1$1(clockDialNode, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1(ClockDialNode clockDialNode, PointerInputChange pointerInputChange, Offset offset) {
        av0.c(clockDialNode.getCoroutineScope(), null, null, new ClockDialNode$pointerInputDragNode$1$2$1(clockDialNode, offset, null), 3);
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        final ClockDialNode clockDialNode = this.this$0;
        Object objDetectDragGestures$default = DragGestureDetectorKt.detectDragGestures$default(pointerInputScope, null, new ll3() { // from class: androidx.compose.material3.t
            @Override // defpackage.ll3
            public final Object invoke() {
                return ClockDialNode$pointerInputDragNode$1.invoke$lambda$0(clockDialNode);
            }
        }, null, new bm3() { // from class: androidx.compose.material3.u
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return ClockDialNode$pointerInputDragNode$1.invoke$lambda$1(clockDialNode, (PointerInputChange) obj, (Offset) obj2);
            }
        }, e02Var, 5, null);
        return objDetectDragGestures$default == a32.COROUTINE_SUSPENDED ? objDetectDragGestures$default : j59.a;
    }
}
