package androidx.compose.ui.draganddrop;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropNode$startDragAndDropTransfer$1 extends gh4 implements nl3<DragAndDropNode, TraversableNode.Companion.TraverseDescendantsAction> {
    final /* synthetic */ ll3<Boolean> $isTransferStarted;
    final /* synthetic */ LayoutCoordinates $nodeCoordinates;
    final /* synthetic */ long $offset;
    final /* synthetic */ DragAndDropStartTransferScope $this_startDragAndDropTransfer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$startDragAndDropTransfer$1(long j, LayoutCoordinates layoutCoordinates, DragAndDropStartTransferScope dragAndDropStartTransferScope, ll3<Boolean> ll3Var) {
        super(1);
        this.$offset = j;
        this.$nodeCoordinates = layoutCoordinates;
        this.$this_startDragAndDropTransfer = dragAndDropStartTransferScope;
        this.$isTransferStarted = ll3Var;
    }

    @Override // defpackage.nl3
    public final TraversableNode.Companion.TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
        if (!dragAndDropNode.isAttached()) {
            return TraversableNode.Companion.TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
        }
        bm3 bm3Var = dragAndDropNode.onStartTransfer;
        if (bm3Var == null) {
            return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
        }
        long j = this.$offset;
        Offset.Companion companion = Offset.Companion;
        if (Offset.m5984equalsimpl0(j, companion.m6002getUnspecifiedF1C5BW0())) {
            bm3Var.invoke(this.$this_startDragAndDropTransfer, Offset.m5976boximpl(companion.m6002getUnspecifiedF1C5BW0()));
        } else {
            long jMo7711localPositionOfR5De75A = DelegatableNodeKt.requireLayoutNode(dragAndDropNode).getCoordinates().mo7711localPositionOfR5De75A(this.$nodeCoordinates, this.$offset);
            if (!SizeKt.m6077toRectuvyYCjk(IntSizeKt.m9225toSizeozmzZPI(dragAndDropNode.m5739getSizeYbymL2g$ui())).m6013containsk4lQ0M(jMo7711localPositionOfR5De75A)) {
                return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
            }
            bm3Var.invoke(this.$this_startDragAndDropTransfer, Offset.m5976boximpl(jMo7711localPositionOfR5De75A));
        }
        return this.$isTransferStarted.invoke().booleanValue() ? TraversableNode.Companion.TraverseDescendantsAction.CancelTraversal : TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
    }
}
