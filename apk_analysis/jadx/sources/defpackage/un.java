package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDragAndDropNode_androidKt;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.BottomAppBarScrollBehavior;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.WideNavigationRailKt;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSize;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class un implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ un(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AppBarKt.BottomAppBarLayout_t5fmz9U$lambda$19$lambda$18((BottomAppBarScrollBehavior) obj2, ((Float) obj).floatValue());
            case 1:
                return SelectionManager.onSelectionChange$lambda$0((SelectionManager) obj2, (Selection) obj);
            case 2:
                return SliderKt.SliderImpl$lambda$29$lambda$26$lambda$25((SliderState) obj2, (IntSize) obj);
            case 3:
                return Boolean.valueOf(TextFieldDragAndDropNode_androidKt.textFieldDragAndDropNode$lambda$0((ll3) obj2, (DragAndDropEvent) obj));
            default:
                return WideNavigationRailKt.ModalWideNavigationRailContent_pU6N4AM$lambda$18$lambda$17((String) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}
