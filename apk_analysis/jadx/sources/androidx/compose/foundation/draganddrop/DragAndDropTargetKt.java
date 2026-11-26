package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropTarget;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class DragAndDropTargetKt {
    public static final Modifier dragAndDropTarget(Modifier modifier, nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        return modifier.then(new DropTargetElement(nl3Var, dragAndDropTarget));
    }
}
