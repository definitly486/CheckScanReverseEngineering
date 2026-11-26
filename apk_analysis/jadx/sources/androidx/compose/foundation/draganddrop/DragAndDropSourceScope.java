package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@ul2
public interface DragAndDropSourceScope extends PointerInputScope {
    void startTransfer(DragAndDropTransferData dragAndDropTransferData);
}
