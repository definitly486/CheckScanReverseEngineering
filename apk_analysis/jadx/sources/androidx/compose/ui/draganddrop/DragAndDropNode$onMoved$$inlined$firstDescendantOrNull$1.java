package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.TraversableNode;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1 extends gh4 implements nl3<DragAndDropNode, TraversableNode.Companion.TraverseDescendantsAction> {
    final /* synthetic */ DragAndDropEvent $event$inlined;
    final /* synthetic */ r07 $match;
    final /* synthetic */ DragAndDropNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1(r07 r07Var, DragAndDropNode dragAndDropNode, DragAndDropEvent dragAndDropEvent) {
        super(1);
        this.$match = r07Var;
        this.this$0 = dragAndDropNode;
        this.$event$inlined = dragAndDropEvent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final TraversableNode.Companion.TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
        DragAndDropNode dragAndDropNode2 = dragAndDropNode;
        if (!this.this$0.getDragAndDropManager().isInterestedTarget(dragAndDropNode2) || !DragAndDropNodeKt.m5745containsUv8p0NA(dragAndDropNode2, DragAndDrop_androidKt.getPositionInRoot(this.$event$inlined))) {
            return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
        }
        this.$match.b = dragAndDropNode;
        return TraversableNode.Companion.TraverseDescendantsAction.CancelTraversal;
    }
}
