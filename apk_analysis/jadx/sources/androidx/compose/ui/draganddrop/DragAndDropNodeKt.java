package androidx.compose.ui.draganddrop;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r07;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropNodeKt {

    /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNodeKt$DragAndDropModifierNode$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<DragAndDropEvent, DragAndDropTarget> {
        final /* synthetic */ nl3<DragAndDropEvent, Boolean> $shouldStartDragAndDrop;
        final /* synthetic */ DragAndDropTarget $target;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
            super(1);
            this.$shouldStartDragAndDrop = nl3Var;
            this.$target = dragAndDropTarget;
        }

        @Override // defpackage.nl3
        public final DragAndDropTarget invoke(DragAndDropEvent dragAndDropEvent) {
            if (this.$shouldStartDragAndDrop.invoke(dragAndDropEvent).booleanValue()) {
                return this.$target;
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNodeKt$DragAndDropTargetModifierNode$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06231 extends gh4 implements nl3<DragAndDropEvent, DragAndDropTarget> {
        final /* synthetic */ nl3<DragAndDropEvent, Boolean> $shouldStartDragAndDrop;
        final /* synthetic */ DragAndDropTarget $target;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06231(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
            super(1);
            this.$shouldStartDragAndDrop = nl3Var;
            this.$target = dragAndDropTarget;
        }

        @Override // defpackage.nl3
        public final DragAndDropTarget invoke(DragAndDropEvent dragAndDropEvent) {
            if (this.$shouldStartDragAndDrop.invoke(dragAndDropEvent).booleanValue()) {
                return this.$target;
            }
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNodeKt$firstDescendantOrNull$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06241<T> extends gh4 implements nl3<T, TraversableNode.Companion.TraverseDescendantsAction> {
        final /* synthetic */ r07<T> $match;
        final /* synthetic */ nl3<T, Boolean> $predicate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06241(nl3<? super T, Boolean> nl3Var, r07<T> r07Var) {
            super(1);
            this.$predicate = nl3Var;
            this.$match = r07Var;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction; */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final TraversableNode.Companion.TraverseDescendantsAction invoke(TraversableNode traversableNode) {
            if (!this.$predicate.invoke(traversableNode).booleanValue()) {
                return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
            }
            this.$match.b = traversableNode;
            return TraversableNode.Companion.TraverseDescendantsAction.CancelTraversal;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ul2
    public static final DragAndDropModifierNode DragAndDropModifierNode(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        return new DragAndDropNode(null, new AnonymousClass1(nl3Var, dragAndDropTarget), 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final DragAndDropSourceModifierNode DragAndDropSourceModifierNode(bm3<? super DragAndDropStartTransferScope, ? super Offset, j59> bm3Var) {
        return new DragAndDropNode(bm3Var, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final DragAndDropTargetModifierNode DragAndDropTargetModifierNode(nl3<? super DragAndDropEvent, Boolean> nl3Var, DragAndDropTarget dragAndDropTarget) {
        return new DragAndDropNode(null, new C06231(nl3Var, dragAndDropTarget), 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: contains-Uv8p0NA, reason: not valid java name */
    public static final boolean m5745containsUv8p0NA(DragAndDropNode dragAndDropNode, long j) {
        if (!dragAndDropNode.getNode().isAttached()) {
            return false;
        }
        LayoutCoordinates coordinates = DelegatableNodeKt.requireLayoutNode(dragAndDropNode).getCoordinates();
        if (!coordinates.isAttached()) {
            return false;
        }
        long jPositionInRoot = LayoutCoordinatesKt.positionInRoot(coordinates);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jPositionInRoot >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jPositionInRoot & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fM5739getSizeYbymL2g$ui = ((int) (dragAndDropNode.m5739getSizeYbymL2g$ui() >> 32)) + fIntBitsToFloat;
        float fM5739getSizeYbymL2g$ui2 = ((int) (dragAndDropNode.m5739getSizeYbymL2g$ui() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + fIntBitsToFloat2;
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (fIntBitsToFloat <= fIntBitsToFloat3 && fIntBitsToFloat3 <= fM5739getSizeYbymL2g$ui) {
            float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (fIntBitsToFloat2 <= fIntBitsToFloat4 && fIntBitsToFloat4 <= fM5739getSizeYbymL2g$ui2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchEntered(DragAndDropTarget dragAndDropTarget, DragAndDropEvent dragAndDropEvent) {
        dragAndDropTarget.onEntered(dragAndDropEvent);
        dragAndDropTarget.onMoved(dragAndDropEvent);
    }

    private static final <T extends TraversableNode> T firstDescendantOrNull(T t, nl3<? super T, Boolean> nl3Var) {
        if (!t.getNode().isAttached()) {
            return null;
        }
        r07 r07Var = new r07();
        TraversableNodeKt.traverseDescendants(t, new C06241(nl3Var, r07Var));
        return (T) r07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends TraversableNode> void traverseSelfAndDescendants(T t, nl3<? super T, ? extends TraversableNode.Companion.TraverseDescendantsAction> nl3Var) {
        if (nl3Var.invoke(t) != TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal) {
            return;
        }
        TraversableNodeKt.traverseDescendants(t, nl3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ul2
    public static final DragAndDropModifierNode DragAndDropModifierNode() {
        return new DragAndDropNode(null, 0 == true ? 1 : 0, 2, 0 == true ? 1 : 0);
    }
}
