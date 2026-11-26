package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import defpackage.aa4;
import defpackage.ah;
import defpackage.ki0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BeyondBoundsLayoutKt {
    /* JADX INFO: renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final <T> T m5857searchBeyondBoundsOMvw8(FocusTargetNode focusTargetNode, int i, nl3<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> nl3Var) {
        Modifier.Node nodePop;
        BeyondBoundsLayout beyondBoundsLayoutParent;
        int iM7691getBeforehoxUOeE;
        NodeChain nodes$ui;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = focusTargetNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            if (layoutNodeRequireLayoutNode == null) {
                nodePop = null;
                break;
            }
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent$ui = parent$ui.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
        if ((focusTargetNode2 == null || !aa4.e(focusTargetNode2.getBeyondBoundsLayoutParent(), focusTargetNode.getBeyondBoundsLayoutParent())) && (beyondBoundsLayoutParent = focusTargetNode.getBeyondBoundsLayoutParent()) != null) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (FocusDirection.m5862equalsimpl0(i, companion.m5873getUpdhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7689getAbovehoxUOeE();
            } else if (FocusDirection.m5862equalsimpl0(i, companion.m5866getDowndhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7692getBelowhoxUOeE();
            } else if (FocusDirection.m5862equalsimpl0(i, companion.m5869getLeftdhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7693getLefthoxUOeE();
            } else if (FocusDirection.m5862equalsimpl0(i, companion.m5872getRightdhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7694getRighthoxUOeE();
            } else if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7690getAfterhoxUOeE();
            } else if (FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s())) {
                iM7691getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m7691getBeforehoxUOeE();
            } else {
                ah.f("Unsupported direction for beyond bounds layout");
            }
            return (T) beyondBoundsLayoutParent.mo2202layouto7g1Pn8(iM7691getBeforehoxUOeE, nl3Var);
        }
        return null;
    }
}
