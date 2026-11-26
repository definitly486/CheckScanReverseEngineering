package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.IntSize;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rk5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rk5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return NavigationItemKt.NavigationItem_8Df7sds$lambda$4$lambda$3((MutableIntState) obj2, (IntSize) obj);
            case 1:
                return SelectionGesturesKt.mouseSelection$lambda$0((MouseSelectionObserver) obj2, (PointerInputChange) obj);
            default:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$4((TextFieldDecoratorModifierNode) obj2, (Offset) obj);
        }
    }
}
