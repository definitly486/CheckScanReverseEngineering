package androidx.compose.ui.draganddrop;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DelegatableNode;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface DragAndDropModifierNode extends DelegatableNode, DragAndDropTarget {
    boolean acceptDragAndDropTransfer(DragAndDropEvent dragAndDropEvent);

    @ul2
    /* JADX INFO: renamed from: drag-12SF9DM, reason: not valid java name */
    void mo5738drag12SF9DM(DragAndDropTransferData dragAndDropTransferData, long j, nl3<? super DrawScope, j59> nl3Var);
}
