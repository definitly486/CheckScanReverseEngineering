package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hr2 implements dm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hr2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.b;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return DragGestureDetectorKt.detectDragGestures$lambda$3((nl3) obj4, (PointerInputChange) obj, (PointerInputChange) obj2, (Offset) obj3);
            default:
                return TextFieldSelectionManager_androidKt.textFieldMagnifier$lambda$0((TextFieldSelectionManager) obj4, (Modifier) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    }
}
