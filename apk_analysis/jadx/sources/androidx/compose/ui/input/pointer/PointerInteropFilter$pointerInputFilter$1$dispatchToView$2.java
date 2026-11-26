package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropFilter$pointerInputFilter$1$dispatchToView$2 extends gh4 implements nl3<MotionEvent, j59> {
    final /* synthetic */ PointerInteropFilter$pointerInputFilter$1 this$0;
    final /* synthetic */ PointerInteropFilter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInteropFilter$pointerInputFilter$1$dispatchToView$2(PointerInteropFilter$pointerInputFilter$1 pointerInteropFilter$pointerInputFilter$1, PointerInteropFilter pointerInteropFilter) {
        super(1);
        this.this$0 = pointerInteropFilter$pointerInputFilter$1;
        this.this$1 = pointerInteropFilter;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            this.this$1.getOnTouchEvent().invoke(motionEvent);
        } else {
            this.this$0.state = this.this$1.getOnTouchEvent().invoke(motionEvent).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(MotionEvent motionEvent) {
        invoke2(motionEvent);
        return j59.a;
    }
}
