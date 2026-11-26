package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ir2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ ll3 c;

    public /* synthetic */ ir2(ll3 ll3Var, int i) {
        this.b = i;
        this.c = ll3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        ll3 ll3Var = this.c;
        switch (i) {
            case 0:
                return DragGestureDetectorKt.detectDragGestures$lambda$4(ll3Var, (PointerInputChange) obj);
            default:
                return TextFieldSelectionManager_androidKt.textFieldMagnifier$lambda$0$4$0$0(ll3Var, (Density) obj);
        }
    }
}
