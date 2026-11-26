package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawModifierNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7 */
    public static final void dispatchDraw(DelegatableNode delegatableNode, ContentDrawScope contentDrawScope) {
        Modifier.Node node = delegatableNode.getNode();
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(4);
        MutableVector mutableVector = null;
        while (node != 0) {
            if (node instanceof DrawModifierNode) {
                ((DrawModifierNode) node).draw(contentDrawScope);
            } else if ((node.getKindSet$ui() & iM8019constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                Modifier.Node delegate$ui = ((DelegatingNode) node).getDelegate$ui();
                int i = 0;
                node = node;
                while (delegate$ui != null) {
                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        i++;
                        if (i == 1) {
                            node = delegate$ui;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (node != 0) {
                                mutableVector.add(node);
                                node = 0;
                            }
                            mutableVector.add(delegate$ui);
                        }
                    }
                    delegate$ui = delegate$ui.getChild$ui();
                    node = node;
                }
                if (i == 1) {
                }
            }
            node = DelegatableNodeKt.pop(mutableVector);
        }
    }

    public static final void invalidateDraw(DrawModifierNode drawModifierNode) {
        if (drawModifierNode.getNode().isAttached()) {
            DelegatableNodeKt.m7874requireCoordinator64DMado(drawModifierNode, NodeKind.m8019constructorimpl(1)).invalidateLayer();
        }
    }
}
