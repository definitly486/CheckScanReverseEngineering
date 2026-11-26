package defpackage;

import androidx.compose.foundation.gestures.IndirectPointerInputEventSmoother;
import androidx.compose.foundation.text.input.internal.TextFieldKeyEventHandler;
import androidx.compose.foundation.text.input.internal.selection.SelectionMovementDeletionContext;
import androidx.compose.material3.internal.AccessibilityServiceStateProvider_androidKt;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.text.SaversKt;
import androidx.lifecycle.Lifecycle;
import yads.e;
import yads.lh1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ t2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AccessibilityServiceStateProvider_androidKt.ObserveState$lambda$6$lambda$5((Lifecycle.Event) obj);
            case 1:
                return Float.valueOf(IndirectPointerInputEventSmoother.smoothEventPosition_tuRUvjQ$lambda$1((IndirectPointerInputChange) obj));
            case 2:
                return SaversKt.BaselineShiftSaver$lambda$1(obj);
            case 3:
                return TextFieldKeyEventHandler.processKeyDownEvent_q0GpTC0$lambda$0$1((SelectionMovementDeletionContext) obj);
            case 4:
                return e.a(obj);
            default:
                return Boolean.valueOf(lh1.b(obj));
        }
    }
}
