package defpackage;

import androidx.compose.foundation.gestures.Draggable2DKt;
import androidx.compose.foundation.pager.PagerMeasureKt;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.runtime.State;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.internal.NavControllerImpl;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vr2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vr2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Draggable2DKt.rememberDraggable2DState$lambda$0$0((State) obj2, (Offset) obj);
            case 1:
                return Boolean.valueOf(NavControllerImpl.restoreStateInternal$lambda$53((String) obj2, (String) obj));
            case 2:
                return PagerMeasureKt.measurePager_7L1iB3k$lambda$18$0((List) obj2, (Placeable.PlacementScope) obj);
            default:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$2((TextFieldDecoratorModifierNode) obj2, (DragAndDropEvent) obj);
        }
    }
}
