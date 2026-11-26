package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ah;
import defpackage.fe0;
import defpackage.ki0;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusTraversalKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: customFocusSearch--OM-vw8, reason: not valid java name */
    public static final FocusRequester m5911customFocusSearchOMvw8(FocusTargetNode focusTargetNode, int i, LayoutDirection layoutDirection) {
        FocusRequester end;
        FocusRequester focusRequester;
        FocusRequester start;
        FocusProperties focusPropertiesFetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s())) {
            return focusPropertiesFetchFocusProperties$ui.getNext();
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s())) {
            return focusPropertiesFetchFocusProperties$ui.getPrevious();
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5873getUpdhqQ8s())) {
            return focusPropertiesFetchFocusProperties$ui.getUp();
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5866getDowndhqQ8s())) {
            return focusPropertiesFetchFocusProperties$ui.getDown();
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5869getLeftdhqQ8s())) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 == 1) {
                start = focusPropertiesFetchFocusProperties$ui.getStart();
            } else {
                if (i2 != 2) {
                    me0.e();
                    return null;
                }
                start = focusPropertiesFetchFocusProperties$ui.getEnd();
            }
            focusRequester = start != FocusRequester.Companion.getDefault() ? start : null;
            return focusRequester == null ? focusPropertiesFetchFocusProperties$ui.getLeft() : focusRequester;
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5872getRightdhqQ8s())) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i3 == 1) {
                end = focusPropertiesFetchFocusProperties$ui.getEnd();
            } else {
                if (i3 != 2) {
                    me0.e();
                    return null;
                }
                end = focusPropertiesFetchFocusProperties$ui.getStart();
            }
            focusRequester = end != FocusRequester.Companion.getDefault() ? end : null;
            return focusRequester == null ? focusPropertiesFetchFocusProperties$ui.getRight() : focusRequester;
        }
        if (!FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s()) && !FocusDirection.m5862equalsimpl0(i, companion.m5868getExitdhqQ8s())) {
            ah.f("invalid FocusDirection");
            return null;
        }
        CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i, null);
        FocusOwner focusOwner = DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner();
        FocusTargetNode activeFocusTargetNode = focusOwner.getActiveFocusTargetNode();
        if (FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s())) {
            focusPropertiesFetchFocusProperties$ui.getOnEnter().invoke(cancelIndicatingFocusBoundaryScope);
        } else {
            focusPropertiesFetchFocusProperties$ui.getOnExit().invoke(cancelIndicatingFocusBoundaryScope);
        }
        if (cancelIndicatingFocusBoundaryScope.isCanceled()) {
            return FocusRequester.Companion.getCancel();
        }
        return activeFocusTargetNode != focusOwner.getActiveFocusTargetNode() ? FocusRequester.Companion.getRedirect$ui() : FocusRequester.Companion.getDefault();
    }

    public static final FocusTargetNode findActiveFocusNode(FocusTargetNode focusTargetNode) {
        FocusTargetNode activeFocusTargetNode = DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().getActiveFocusTargetNode();
        if (activeFocusTargetNode == null || !activeFocusTargetNode.isAttached()) {
            return null;
        }
        return activeFocusTargetNode;
    }

    private static final FocusTargetNode findNonDeactivatedParent(FocusTargetNode focusTargetNode) {
        NodeChain nodes$ui;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = focusTargetNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
                                if (focusTargetNode2.fetchFocusProperties$ui().getCanFocus()) {
                                    return focusTargetNode2;
                                }
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
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
        return null;
    }

    public static final Rect focusRect(FocusTargetNode focusTargetNode) {
        LayoutCoordinates layoutCoordinatesFindRootCoordinates;
        if (!focusTargetNode.isAttached()) {
            return Rect.Companion.getZero();
        }
        NodeCoordinator coordinator$ui = focusTargetNode.getCoordinator$ui();
        if (coordinator$ui != null && (layoutCoordinatesFindRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(coordinator$ui)) != null) {
            if (!layoutCoordinatesFindRootCoordinates.isAttached()) {
                layoutCoordinatesFindRootCoordinates = null;
            }
            if (layoutCoordinatesFindRootCoordinates != null) {
                return focusTargetNode.fetchFocusRect$ui(layoutCoordinatesFindRootCoordinates);
            }
        }
        return Rect.Companion.getZero();
    }

    /* JADX INFO: renamed from: focusSearch-0X8WOeE, reason: not valid java name */
    public static final Boolean m5912focusSearch0X8WOeE(FocusTargetNode focusTargetNode, int i, LayoutDirection layoutDirection, Rect rect, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        int iM5872getRightdhqQ8s;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s())) {
            return Boolean.valueOf(OneDimensionalFocusSearchKt.m5926oneDimensionalFocusSearchOMvw8(focusTargetNode, i, nl3Var));
        }
        if (FocusDirection.m5862equalsimpl0(i, companion.m5869getLeftdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5872getRightdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5873getUpdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5866getDowndhqQ8s())) {
            return TwoDimensionalFocusSearchKt.m5937twoDimensionalFocusSearchsMXa3k8(focusTargetNode, i, rect, nl3Var);
        }
        if (!FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s())) {
            if (!FocusDirection.m5862equalsimpl0(i, companion.m5868getExitdhqQ8s())) {
                fe0.c(FocusDirection.m5864toStringimpl(i), "Focus search invoked with invalid FocusDirection ");
                return null;
            }
            FocusTargetNode focusTargetNodeFindActiveFocusNode = findActiveFocusNode(focusTargetNode);
            FocusTargetNode focusTargetNodeFindNonDeactivatedParent = focusTargetNodeFindActiveFocusNode != null ? findNonDeactivatedParent(focusTargetNodeFindActiveFocusNode) : null;
            return Boolean.valueOf((focusTargetNodeFindNonDeactivatedParent == null || focusTargetNodeFindNonDeactivatedParent == focusTargetNode) ? false : nl3Var.invoke(focusTargetNodeFindNonDeactivatedParent).booleanValue());
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        if (i2 == 1) {
            iM5872getRightdhqQ8s = companion.m5872getRightdhqQ8s();
        } else {
            if (i2 != 2) {
                me0.e();
                return null;
            }
            iM5872getRightdhqQ8s = companion.m5869getLeftdhqQ8s();
        }
        FocusTargetNode focusTargetNodeFindActiveFocusNode2 = findActiveFocusNode(focusTargetNode);
        if (focusTargetNodeFindActiveFocusNode2 != null) {
            return TwoDimensionalFocusSearchKt.m5937twoDimensionalFocusSearchsMXa3k8(focusTargetNodeFindActiveFocusNode2, iM5872getRightdhqQ8s, rect, nl3Var);
        }
        return null;
    }

    public static final FocusTargetNode getActiveChild(FocusTargetNode focusTargetNode) {
        if (!focusTargetNode.getNode().isAttached()) {
            return null;
        }
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusTargetNode.getNode(), false);
        } else {
            mutableVector.add(child$ui);
        }
        while (mutableVector.getSize() != 0) {
            Modifier.Node nodePop = (Modifier.Node) pg.f(mutableVector, 1);
            if ((nodePop.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector, nodePop, false);
            } else {
                while (nodePop != null) {
                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        MutableVector mutableVector2 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
                                if (focusTargetNode2.getNode().isAttached()) {
                                    int i = WhenMappings.$EnumSwitchMapping$1[focusTargetNode2.getFocusState().ordinal()];
                                    if (i == 1 || i == 2 || i == 3) {
                                        return focusTargetNode2;
                                    }
                                    if (i != 4) {
                                        me0.e();
                                        return null;
                                    }
                                }
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector2.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector2.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                        }
                        break;
                    }
                    nodePop = nodePop.getChild$ui();
                }
            }
        }
        return null;
    }

    public static final boolean isEligibleForFocusSearch(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNode;
        NodeCoordinator coordinator$ui;
        LayoutNode layoutNode2;
        NodeCoordinator coordinator$ui2 = focusTargetNode.getCoordinator$ui();
        return (coordinator$ui2 == null || (layoutNode = coordinator$ui2.getLayoutNode()) == null || !layoutNode.isPlaced() || (coordinator$ui = focusTargetNode.getCoordinator$ui()) == null || (layoutNode2 = coordinator$ui.getLayoutNode()) == null || !layoutNode2.isAttached()) ? false : true;
    }
}
