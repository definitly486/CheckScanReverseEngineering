package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropFilter$pointerInputFilter$1$onCancel$1 extends gh4 implements nl3<MotionEvent, j59> {
    final /* synthetic */ PointerInteropFilter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInteropFilter$pointerInputFilter$1$onCancel$1(PointerInteropFilter pointerInteropFilter) {
        super(1);
        this.this$0 = pointerInteropFilter;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(MotionEvent motionEvent) {
        this.this$0.getOnTouchEvent().invoke(motionEvent);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(MotionEvent motionEvent) {
        invoke2(motionEvent);
        return j59.a;
    }
}
