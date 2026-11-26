package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j59;
import defpackage.ki0;
import defpackage.kx6;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
public final class OneDimensionalFocusSearchKt {
    private static final String InvalidFocusDirection = "This function should only be used for 1-D focus search";
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final boolean backwardFocusSearch(FocusTargetNode focusTargetNode, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        FocusStateImpl focusState = focusTargetNode.getFocusState();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[focusState.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return pickChildForBackwardSearch(focusTargetNode, nl3Var);
            }
            if (i != 4) {
                me0.e();
                return false;
            }
            if (!pickChildForBackwardSearch(focusTargetNode, nl3Var)) {
                if (!(focusTargetNode.fetchFocusProperties$ui().getCanFocus() ? nl3Var.invoke(focusTargetNode).booleanValue() : false)) {
                    return false;
                }
            }
            return true;
        }
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
        if (activeChild == null) {
            ah.f(NoActiveChild);
            return false;
        }
        int i2 = iArr[activeChild.getFocusState().ordinal()];
        if (i2 == 1) {
            return backwardFocusSearch(activeChild, nl3Var) || m5925generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.Companion.m5871getPreviousdhqQ8s(), nl3Var) || (activeChild.fetchFocusProperties$ui().getCanFocus() && nl3Var.invoke(activeChild).booleanValue());
        }
        if (i2 == 2 || i2 == 3) {
            return m5925generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.Companion.m5871getPreviousdhqQ8s(), nl3Var);
        }
        if (i2 != 4) {
            me0.e();
            return false;
        }
        ah.f(NoActiveChild);
        return false;
    }

    private static final <T> void forEachItemAfter(MutableVector<T> mutableVector, T t, nl3<? super T, j59> nl3Var) {
        boolean z = false;
        y74 y74VarN = kx6.n(0, mutableVector.getSize());
        int i = y74VarN.b;
        int i2 = y74VarN.c;
        if (i > i2) {
            return;
        }
        while (true) {
            if (z) {
                nl3Var.invoke(mutableVector.content[i]);
            }
            if (aa4.e(mutableVector.content[i], t)) {
                z = true;
            }
            if (i == i2) {
                return;
            } else {
                i++;
            }
        }
    }

    private static final <T> void forEachItemBefore(MutableVector<T> mutableVector, T t, nl3<? super T, j59> nl3Var) {
        boolean z = false;
        y74 y74VarN = kx6.n(0, mutableVector.getSize());
        int i = y74VarN.b;
        int i2 = y74VarN.c;
        if (i > i2) {
            return;
        }
        while (true) {
            if (z) {
                nl3Var.invoke(mutableVector.content[i2]);
            }
            if (aa4.e(mutableVector.content[i2], t)) {
                z = true;
            }
            if (i2 == i) {
                return;
            } else {
                i2--;
            }
        }
    }

    private static final boolean forwardFocusSearch(FocusTargetNode focusTargetNode, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i == 1) {
            FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
            if (activeChild != null) {
                return forwardFocusSearch(activeChild, nl3Var) || m5925generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.Companion.m5870getNextdhqQ8s(), nl3Var);
            }
            ah.f(NoActiveChild);
            return false;
        }
        if (i == 2 || i == 3) {
            return pickChildForForwardSearch(focusTargetNode, nl3Var);
        }
        if (i == 4) {
            return focusTargetNode.fetchFocusProperties$ui().getCanFocus() ? nl3Var.invoke(focusTargetNode).booleanValue() : pickChildForForwardSearch(focusTargetNode, nl3Var);
        }
        me0.e();
        return false;
    }

    /* JADX INFO: renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    private static final boolean m5925generateAndSearchChildren4C6V_qg(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        if (m5927searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, nl3Var)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m5857searchBeyondBoundsOMvw8(focusTargetNode, i, new OneDimensionalFocusSearchKt$generateAndSearchChildren$1(DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().getActiveFocusTargetNode(), focusTargetNode, focusTargetNode2, i, nl3Var));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static /* synthetic */ void getInvalidFocusDirection$annotations() {
    }

    private static /* synthetic */ void getNoActiveChild$annotations() {
    }

    private static final boolean isRoot(FocusTargetNode focusTargetNode) {
        Modifier.Node node;
        NodeChain nodes$ui;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = focusTargetNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            node = null;
            if (layoutNodeRequireLayoutNode == null) {
                break;
            }
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                node = nodePop;
                                break loop0;
                            }
                            if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
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
                                if (i == 1) {
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
        return node == null;
    }

    /* JADX INFO: renamed from: oneDimensionalFocusSearch--OM-vw8, reason: not valid java name */
    public static final boolean m5926oneDimensionalFocusSearchOMvw8(FocusTargetNode focusTargetNode, int i, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s())) {
            return forwardFocusSearch(focusTargetNode, nl3Var);
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s())) {
            return backwardFocusSearch(focusTargetNode, nl3Var);
        }
        ah.f(InvalidFocusDirection);
        return false;
    }

    private static final boolean pickChildForBackwardSearch(FocusTargetNode focusTargetNode, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode.getNode(), false);
        } else {
            mutableVector2.add(child$ui);
        }
        while (mutableVector2.getSize() != 0) {
            Modifier.Node nodePop = (Modifier.Node) pg.f(mutableVector2, 1);
            if ((nodePop.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, nodePop, false);
            } else {
                while (nodePop != null) {
                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) nodePop);
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector3.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector3.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector3);
                        }
                        break;
                    }
                    nodePop = nodePop.getChild$ui();
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        int size = mutableVector.getSize() - 1;
        Object[] objArr = mutableVector.content;
        if (size < objArr.length) {
            while (size >= 0) {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[size];
                if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode2) && backwardFocusSearch(focusTargetNode2, nl3Var)) {
                    return true;
                }
                size--;
            }
        }
        return false;
    }

    private static final boolean pickChildForForwardSearch(FocusTargetNode focusTargetNode, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode.getNode(), false);
        } else {
            mutableVector2.add(child$ui);
        }
        while (mutableVector2.getSize() != 0) {
            Modifier.Node nodePop = (Modifier.Node) pg.f(mutableVector2, 1);
            if ((nodePop.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, nodePop, false);
            } else {
                while (nodePop != null) {
                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) nodePop);
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector3.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector3.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector3);
                        }
                        break;
                    }
                    nodePop = nodePop.getChild$ui();
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        Object[] objArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i2 = 0; i2 < size; i2++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i2];
            if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode2) && forwardFocusSearch(focusTargetNode2, nl3Var)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m5927searchChildren4C6V_qg(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        if (focusTargetNode.getFocusState() != FocusStateImpl.ActiveParent) {
            ah.f("This function should only be used within a parent that has focus.");
            return false;
        }
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode.getNode(), false);
        } else {
            mutableVector2.add(child$ui);
        }
        while (mutableVector2.getSize() != 0) {
            Modifier.Node nodePop = (Modifier.Node) pg.f(mutableVector2, 1);
            if ((nodePop.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, nodePop, false);
            } else {
                while (nodePop != null) {
                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) nodePop);
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector3.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector3.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector3);
                        }
                        break;
                    }
                    nodePop = nodePop.getChild$ui();
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s())) {
            y74 y74VarN = kx6.n(0, mutableVector.getSize());
            int i3 = y74VarN.b;
            int i4 = y74VarN.c;
            if (i3 <= i4) {
                boolean z = false;
                while (true) {
                    if (z) {
                        FocusTargetNode focusTargetNode3 = (FocusTargetNode) mutableVector.content[i3];
                        if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode3) && forwardFocusSearch(focusTargetNode3, nl3Var)) {
                            return true;
                        }
                    }
                    if (aa4.e(mutableVector.content[i3], focusTargetNode2)) {
                        z = true;
                    }
                    if (i3 == i4) {
                        break;
                    }
                    i3++;
                }
            }
        } else {
            if (!FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s())) {
                ah.f(InvalidFocusDirection);
                return false;
            }
            y74 y74VarN2 = kx6.n(0, mutableVector.getSize());
            int i5 = y74VarN2.b;
            int i6 = y74VarN2.c;
            if (i5 <= i6) {
                boolean z2 = false;
                while (true) {
                    if (z2) {
                        FocusTargetNode focusTargetNode4 = (FocusTargetNode) mutableVector.content[i6];
                        if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode4) && backwardFocusSearch(focusTargetNode4, nl3Var)) {
                            return true;
                        }
                    }
                    if (aa4.e(mutableVector.content[i6], focusTargetNode2)) {
                        z2 = true;
                    }
                    if (i6 == i5) {
                        break;
                    }
                    i6--;
                }
            }
        }
        if (FocusDirection.m5862equalsimpl0(i, FocusDirection.Companion.m5870getNextdhqQ8s()) || !focusTargetNode.fetchFocusProperties$ui().getCanFocus() || isRoot(focusTargetNode)) {
            return false;
        }
        return nl3Var.invoke(focusTargetNode).booleanValue();
    }
}
