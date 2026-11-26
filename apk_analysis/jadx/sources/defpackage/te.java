package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.zg1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class te implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ te(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Float.valueOf(AnchoredDraggableDefaults.PositionalThreshold$lambda$0(((Float) obj).floatValue()));
            case 1:
                return TimePickerKt.DisplaySeparator$lambda$52$lambda$51((SemanticsPropertyReceiver) obj);
            default:
                return Boolean.valueOf(zg1.f(obj));
        }
    }
}
