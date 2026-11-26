package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutModifierNodeKt {
    public static final void invalidateLayer(LayoutModifierNode layoutModifierNode) {
        DelegatableNodeKt.m7874requireCoordinator64DMado(layoutModifierNode, NodeKind.m8019constructorimpl(2)).invalidateLayer();
    }

    public static final void invalidateMeasurement(LayoutModifierNode layoutModifierNode) {
        DelegatableNodeKt.requireLayoutNode(layoutModifierNode).invalidateMeasurements$ui();
    }

    public static final void invalidatePlacement(LayoutModifierNode layoutModifierNode) {
        LayoutNode.requestRelayout$ui$default(DelegatableNodeKt.requireLayoutNode(layoutModifierNode), false, 1, null);
    }

    public static final void remeasureSync(LayoutModifierNode layoutModifierNode) {
        DelegatableNodeKt.requireLayoutNode(layoutModifierNode).forceRemeasure();
    }

    public static final void requestRemeasure(LayoutModifierNode layoutModifierNode) {
        LayoutNode.requestRemeasure$ui$default(DelegatableNodeKt.requireLayoutNode(layoutModifierNode), false, false, false, 7, null);
    }

    public static final void updateLayerBlock(LayoutModifierNode layoutModifierNode, nl3<? super GraphicsLayerScope, j59> nl3Var) {
        NodeCoordinator wrapped$ui;
        if (layoutModifierNode.getNode().isAttached() && (wrapped$ui = DelegatableNodeKt.m7874requireCoordinator64DMado(layoutModifierNode, NodeKind.m8019constructorimpl(2)).getWrapped$ui()) != null) {
            wrapped$ui.updateLayerBlock(nl3Var, true);
        }
    }
}
