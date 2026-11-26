package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.aa4;
import defpackage.fg;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ki0;
import defpackage.ll3;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusTransactionsKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean captureFocus(FocusTargetNode focusTargetNode) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        boolean z = true;
        if (i == 1) {
            DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().setFocusCaptured(true);
            focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Captured);
            return true;
        }
        if (i != 2) {
            z = false;
            if (i != 3 && i != 4) {
                me0.e();
            }
        }
        return z;
    }

    private static final boolean clearChildFocus(FocusTargetNode focusTargetNode, boolean z, boolean z2) {
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
        if (activeChild != null) {
            return clearFocus(activeChild, z, z2);
        }
        return true;
    }

    public static /* synthetic */ boolean clearChildFocus$default(FocusTargetNode focusTargetNode, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return clearChildFocus(focusTargetNode, z, z2);
    }

    public static final boolean clearFocus(FocusTargetNode focusTargetNode, boolean z, boolean z2) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i == 1) {
            if (!ComposeUiFlags.isOptimizedFocusEventDispatchEnabled) {
                DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().setActiveFocusTargetNode(null);
                if (z2) {
                    focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Inactive);
                }
            }
            return true;
        }
        if (i == 2) {
            if (z && !ComposeUiFlags.isOptimizedFocusEventDispatchEnabled) {
                DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().setActiveFocusTargetNode(null);
                if (z2) {
                    focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Captured, FocusStateImpl.Inactive);
                }
            }
            return z;
        }
        if (i != 3) {
            if (i == 4) {
                return true;
            }
            me0.e();
            return false;
        }
        if (!clearChildFocus(focusTargetNode, z, z2)) {
            return false;
        }
        if (z2) {
            focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
        }
        return true;
    }

    public static /* synthetic */ boolean clearFocus$default(FocusTargetNode focusTargetNode, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return clearFocus(focusTargetNode, z, z2);
    }

    public static final boolean freeFocus(FocusTargetNode focusTargetNode) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4) {
                    me0.e();
                }
                return false;
            }
            DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().setFocusCaptured(false);
            focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Captured, FocusStateImpl.Active);
        }
        return true;
    }

    private static final boolean grantFocus(FocusTargetNode focusTargetNode) {
        ObserverModifierNodeKt.observeReads(focusTargetNode, new AnonymousClass1(focusTargetNode));
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3 && i != 4) {
                me0.e();
                return false;
            }
            DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().setActiveFocusTargetNode(focusTargetNode);
        }
        return true;
    }

    /* JADX INFO: renamed from: performCustomClearFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m5905performCustomClearFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i2 == 3) {
                CustomDestinationResult customDestinationResultM5905performCustomClearFocusMxy_nc0 = m5905performCustomClearFocusMxy_nc0(requireActiveChild(focusTargetNode), i);
                CustomDestinationResult customDestinationResult = customDestinationResultM5905performCustomClearFocusMxy_nc0 != CustomDestinationResult.None ? customDestinationResultM5905performCustomClearFocusMxy_nc0 : null;
                return customDestinationResult == null ? m5907performCustomExitMxy_nc0(focusTargetNode, i) : customDestinationResult;
            }
            if (i2 != 4) {
                me0.e();
                return null;
            }
        }
        return CustomDestinationResult.None;
    }

    /* JADX INFO: renamed from: performCustomEnter-Mxy_nc0, reason: not valid java name */
    private static final CustomDestinationResult m5906performCustomEnterMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        if (!focusTargetNode.isProcessingCustomEnter) {
            focusTargetNode.isProcessingCustomEnter = true;
            try {
                FocusProperties focusPropertiesFetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i, null);
                FocusOwner focusOwner = DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner();
                FocusTargetNode activeFocusTargetNode = focusOwner.getActiveFocusTargetNode();
                focusPropertiesFetchFocusProperties$ui.getOnEnter().invoke(cancelIndicatingFocusBoundaryScope);
                FocusTargetNode activeFocusTargetNode2 = focusOwner.getActiveFocusTargetNode();
                if (cancelIndicatingFocusBoundaryScope.isCanceled()) {
                    FocusRequester.Companion companion = FocusRequester.Companion;
                    FocusRequester cancel = companion.getCancel();
                    if (cancel == companion.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    if (cancel == companion.getRedirect$ui()) {
                        return CustomDestinationResult.Redirected;
                    }
                    return FocusRequester.m5892requestFocus3ESFkO8$default(cancel, 0, 1, null) ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
                if (activeFocusTargetNode != activeFocusTargetNode2 && activeFocusTargetNode2 != null) {
                    FocusRequester.Companion companion2 = FocusRequester.Companion;
                    FocusRequester redirect$ui = companion2.getRedirect$ui();
                    if (redirect$ui == companion2.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    if (redirect$ui == companion2.getRedirect$ui()) {
                        return CustomDestinationResult.Redirected;
                    }
                    return FocusRequester.m5892requestFocus3ESFkO8$default(redirect$ui, 0, 1, null) ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.isProcessingCustomEnter = false;
            }
        }
        return CustomDestinationResult.None;
    }

    /* JADX INFO: renamed from: performCustomExit-Mxy_nc0, reason: not valid java name */
    private static final CustomDestinationResult m5907performCustomExitMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        if (!focusTargetNode.isProcessingCustomExit) {
            focusTargetNode.isProcessingCustomExit = true;
            try {
                FocusProperties focusPropertiesFetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i, null);
                FocusOwner focusOwner = DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner();
                FocusTargetNode activeFocusTargetNode = focusOwner.getActiveFocusTargetNode();
                focusPropertiesFetchFocusProperties$ui.getOnExit().invoke(cancelIndicatingFocusBoundaryScope);
                FocusTargetNode activeFocusTargetNode2 = focusOwner.getActiveFocusTargetNode();
                if (cancelIndicatingFocusBoundaryScope.isCanceled()) {
                    FocusRequester.Companion companion = FocusRequester.Companion;
                    FocusRequester cancel = companion.getCancel();
                    if (cancel == companion.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    if (cancel == companion.getRedirect$ui()) {
                        return CustomDestinationResult.Redirected;
                    }
                    return FocusRequester.m5892requestFocus3ESFkO8$default(cancel, 0, 1, null) ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
                if (activeFocusTargetNode != activeFocusTargetNode2 && activeFocusTargetNode2 != null) {
                    FocusRequester.Companion companion2 = FocusRequester.Companion;
                    FocusRequester redirect$ui = companion2.getRedirect$ui();
                    if (redirect$ui == companion2.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    if (redirect$ui == companion2.getRedirect$ui()) {
                        return CustomDestinationResult.Redirected;
                    }
                    return FocusRequester.m5892requestFocus3ESFkO8$default(redirect$ui, 0, 1, null) ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.isProcessingCustomExit = false;
            }
        }
        return CustomDestinationResult.None;
    }

    /* JADX INFO: renamed from: performCustomRequestFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m5908performCustomRequestFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        Modifier.Node nodePop;
        NodeChain nodes$ui;
        int i2 = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i2 == 1 || i2 == 2) {
            return CustomDestinationResult.None;
        }
        if (i2 == 3) {
            return m5905performCustomClearFocusMxy_nc0(requireActiveChild(focusTargetNode), i);
        }
        if (i2 != 4) {
            me0.e();
            return null;
        }
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
                        MutableVector mutableVector = null;
                        nodePop = parent$ui;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i3++;
                                        if (i3 == 1) {
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
                                if (i3 == 1) {
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
        if (focusTargetNode2 == null) {
            return CustomDestinationResult.None;
        }
        int i4 = WhenMappings.$EnumSwitchMapping$0[focusTargetNode2.getFocusState().ordinal()];
        if (i4 == 1) {
            return m5906performCustomEnterMxy_nc0(focusTargetNode2, i);
        }
        if (i4 == 2) {
            return CustomDestinationResult.Cancelled;
        }
        if (i4 == 3) {
            return m5908performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
        }
        if (i4 != 4) {
            me0.e();
            return null;
        }
        CustomDestinationResult customDestinationResultM5908performCustomRequestFocusMxy_nc0 = m5908performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
        CustomDestinationResult customDestinationResult = customDestinationResultM5908performCustomRequestFocusMxy_nc0 != CustomDestinationResult.None ? customDestinationResultM5908performCustomRequestFocusMxy_nc0 : null;
        return customDestinationResult == null ? m5906performCustomEnterMxy_nc0(focusTargetNode2, i) : customDestinationResult;
    }

    public static final boolean performRequestFocus(FocusTargetNode focusTargetNode) {
        MutableVector mutableVector;
        NodeChain nodes$ui;
        NodeChain nodes$ui2;
        boolean z;
        String str;
        NodeChain nodes$ui3;
        FocusOwner focusOwner = DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner();
        FocusTargetNode activeFocusTargetNode = focusOwner.getActiveFocusTargetNode();
        FocusStateImpl focusState = focusTargetNode.getFocusState();
        int i = 1;
        if (activeFocusTargetNode == focusTargetNode) {
            focusTargetNode.dispatchFocusCallbacks$ui(focusState, focusState);
            return true;
        }
        MutableVector mutableVector2 = null;
        if (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
            if ((activeFocusTargetNode == null || activeFocusTargetNode.isInteropViewHost()) && !focusTargetNode.isInteropViewHost() && !m5910requestOwnerFocusEtdf9zw$default(focusTargetNode, null, null, 3, null)) {
                return false;
            }
        } else if (activeFocusTargetNode == null && !m5910requestOwnerFocusEtdf9zw$default(focusTargetNode, null, null, 3, null)) {
            return false;
        }
        String str2 = "visitAncestors called on an unattached node";
        int i2 = 1024;
        if (activeFocusTargetNode != null) {
            mutableVector = new MutableVector(new FocusTargetNode[16], 0);
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
            if (!activeFocusTargetNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui = activeFocusTargetNode.getNode().getParent$ui();
            LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(activeFocusTargetNode);
            while (layoutNodeRequireLayoutNode != null) {
                if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                    while (parent$ui != null) {
                        if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                            MutableVector mutableVector3 = mutableVector2;
                            Modifier.Node nodePop = parent$ui;
                            while (nodePop != null) {
                                i2 = i2;
                                if (nodePop instanceof FocusTargetNode) {
                                    mutableVector.add((FocusTargetNode) nodePop);
                                } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                                    int i3 = 0;
                                    while (delegate$ui != null) {
                                        if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                            i3++;
                                            if (i3 == i) {
                                                j59 j59Var = j59.a;
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
                                        delegate$ui = delegate$ui.getChild$ui();
                                        i = 1;
                                    }
                                    if (i3 == i) {
                                    }
                                }
                                nodePop = DelegatableNodeKt.pop(mutableVector3);
                                i = 1;
                            }
                        }
                        parent$ui = parent$ui.getParent$ui();
                        i2 = i2;
                        i = 1;
                        mutableVector2 = null;
                    }
                }
                int i4 = i2;
                layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
                parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui3 = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui3.getTail$ui();
                i2 = i4;
                i = 1;
                mutableVector2 = null;
            }
        } else {
            mutableVector = null;
        }
        int i5 = i2;
        MutableVector mutableVector4 = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector mutableVector5 = new MutableVector(new FocusTargetNode[16], 0);
        int iM8019constructorimpl2 = NodeKind.m8019constructorimpl(i5);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui2 = focusTargetNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        boolean z2 = true;
        while (layoutNodeRequireLayoutNode2 != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode2) & iM8019constructorimpl2) != 0) {
                while (parent$ui2 != null) {
                    if ((parent$ui2.getKindSet$ui() & iM8019constructorimpl2) != 0) {
                        Modifier.Node nodePop2 = parent$ui2;
                        MutableVector mutableVector6 = null;
                        while (nodePop2 != null) {
                            if (nodePop2 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop2;
                                if (aa4.e(mutableVector != null ? Boolean.valueOf(mutableVector.remove(focusTargetNode2)) : null, Boolean.TRUE)) {
                                    mutableVector4.add(focusTargetNode2);
                                } else {
                                    mutableVector5.add(focusTargetNode2);
                                }
                                if (focusTargetNode2 == activeFocusTargetNode) {
                                    z2 = false;
                                }
                                z = false;
                            } else {
                                z = true;
                            }
                            if (z && (nodePop2.getKindSet$ui() & iM8019constructorimpl2) != 0 && (nodePop2 instanceof DelegatingNode)) {
                                Modifier.Node delegate$ui2 = ((DelegatingNode) nodePop2).getDelegate$ui();
                                int i6 = 0;
                                while (delegate$ui2 != null) {
                                    if ((delegate$ui2.getKindSet$ui() & iM8019constructorimpl2) == 0) {
                                        str2 = str2;
                                    } else {
                                        i6++;
                                        if (i6 == 1) {
                                            j59 j59Var2 = j59.a;
                                            nodePop2 = delegate$ui2;
                                            str2 = str2;
                                        } else {
                                            if (mutableVector6 == null) {
                                                mutableVector6 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop2 != null) {
                                                mutableVector6.add(nodePop2);
                                                nodePop2 = null;
                                            }
                                            mutableVector6.add(delegate$ui2);
                                        }
                                    }
                                    delegate$ui2 = delegate$ui2.getChild$ui();
                                    str2 = str2;
                                }
                                str = str2;
                                if (i6 == 1) {
                                }
                                focusOwner = focusOwner;
                                str2 = str;
                            } else {
                                str = str2;
                            }
                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                            focusOwner = focusOwner;
                            str2 = str;
                        }
                    }
                    parent$ui2 = parent$ui2.getParent$ui();
                    focusOwner = focusOwner;
                    str2 = str2;
                }
            }
            FocusOwner focusOwner2 = focusOwner;
            String str3 = str2;
            layoutNodeRequireLayoutNode2 = layoutNodeRequireLayoutNode2.getParent$ui();
            parent$ui2 = (layoutNodeRequireLayoutNode2 == null || (nodes$ui2 = layoutNodeRequireLayoutNode2.getNodes$ui()) == null) ? null : nodes$ui2.getTail$ui();
            focusOwner = focusOwner2;
            str2 = str3;
        }
        FocusOwner focusOwner3 = focusOwner;
        String str4 = str2;
        if (z2 && activeFocusTargetNode != null && !clearFocus$default(activeFocusTargetNode, false, true, 1, null)) {
            return false;
        }
        grantFocus(focusTargetNode);
        if (ComposeUiFlags.isOptimizedFocusEventDispatchEnabled && z2 && activeFocusTargetNode != null) {
            activeFocusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Inactive);
            j59 j59Var3 = j59.a;
        }
        if (mutableVector != null) {
            int size = mutableVector.getSize() - 1;
            Object[] objArr = mutableVector.content;
            if (size < objArr.length) {
                while (size >= 0) {
                    FocusTargetNode focusTargetNode3 = (FocusTargetNode) objArr[size];
                    if (focusOwner3.getActiveFocusTargetNode() != focusTargetNode) {
                        return false;
                    }
                    focusTargetNode3.dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                    size--;
                }
            }
            j59 j59Var4 = j59.a;
        }
        int size2 = mutableVector5.getSize() - 1;
        Object[] objArr2 = mutableVector5.content;
        if (size2 < objArr2.length) {
            while (size2 >= 0) {
                FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr2[size2];
                if (focusOwner3.getActiveFocusTargetNode() != focusTargetNode) {
                    return false;
                }
                focusTargetNode4.dispatchFocusCallbacks$ui(focusTargetNode4 == activeFocusTargetNode ? FocusStateImpl.Active : FocusStateImpl.Inactive, FocusStateImpl.ActiveParent);
                size2--;
            }
        }
        if (focusOwner3.getActiveFocusTargetNode() != focusTargetNode) {
            return false;
        }
        focusTargetNode.dispatchFocusCallbacks$ui(focusState, FocusStateImpl.Active);
        if (focusOwner3.getActiveFocusTargetNode() != focusTargetNode) {
            return false;
        }
        if (ComposeUiFlags.isFocusRestorationEnabled) {
            FocusTargetNode focusTargetNode5 = (FocusTargetNode) (mutableVector4.getSize() == 0 ? null : mutableVector4.content[mutableVector4.getSize() - 1]);
            int iM8019constructorimpl3 = NodeKind.m8019constructorimpl(i5);
            if (!focusTargetNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException(str4);
            }
            Modifier.Node parent$ui3 = focusTargetNode.getNode().getParent$ui();
            LayoutNode layoutNodeRequireLayoutNode3 = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop10: while (layoutNodeRequireLayoutNode3 != null) {
                if ((ki0.b(layoutNodeRequireLayoutNode3) & iM8019constructorimpl3) != 0) {
                    while (parent$ui3 != null) {
                        if ((parent$ui3.getKindSet$ui() & iM8019constructorimpl3) != 0) {
                            Modifier.Node nodePop3 = parent$ui3;
                            MutableVector mutableVector7 = null;
                            while (nodePop3 != null) {
                                if (nodePop3 instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode6 = (FocusTargetNode) nodePop3;
                                    FocusRestorerKt.saveFocusedChild(focusTargetNode6);
                                    if (focusTargetNode6 == focusTargetNode5) {
                                        break loop10;
                                    }
                                } else if ((nodePop3.getKindSet$ui() & iM8019constructorimpl3) != 0 && (nodePop3 instanceof DelegatingNode)) {
                                    int i7 = 0;
                                    for (Modifier.Node delegate$ui3 = ((DelegatingNode) nodePop3).getDelegate$ui(); delegate$ui3 != null; delegate$ui3 = delegate$ui3.getChild$ui()) {
                                        if ((delegate$ui3.getKindSet$ui() & iM8019constructorimpl3) != 0) {
                                            i7++;
                                            if (i7 == 1) {
                                                j59 j59Var5 = j59.a;
                                                nodePop3 = delegate$ui3;
                                            } else {
                                                if (mutableVector7 == null) {
                                                    mutableVector7 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodePop3 != null) {
                                                    mutableVector7.add(nodePop3);
                                                    nodePop3 = null;
                                                }
                                                mutableVector7.add(delegate$ui3);
                                            }
                                        }
                                    }
                                    if (i7 != 1) {
                                        nodePop3 = DelegatableNodeKt.pop(mutableVector7);
                                    }
                                }
                                nodePop3 = DelegatableNodeKt.pop(mutableVector7);
                            }
                        }
                        parent$ui3 = parent$ui3.getParent$ui();
                    }
                }
                layoutNodeRequireLayoutNode3 = layoutNodeRequireLayoutNode3.getParent$ui();
                parent$ui3 = (layoutNodeRequireLayoutNode3 == null || (nodes$ui = layoutNodeRequireLayoutNode3.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
            }
            j59 j59Var6 = j59.a;
        }
        if (!ComposeUiFlags.isViewFocusFixEnabled || DelegatableNodeKt.requireLayoutNode(focusTargetNode).getInteropView() != null) {
            return true;
        }
        m5909requestOwnerFocusEtdf9zw(focusTargetNode, FocusDirection.m5859boximpl(FocusDirection.Companion.m5870getNextdhqQ8s()), null);
        return true;
    }

    /* JADX INFO: renamed from: requestOwnerFocus-Etdf9zw, reason: not valid java name */
    private static final boolean m5909requestOwnerFocusEtdf9zw(FocusTargetNode focusTargetNode, FocusDirection focusDirection, Rect rect) {
        return DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().mo5883requestOwnerFocus7o62pno(focusDirection, rect);
    }

    /* JADX INFO: renamed from: requestOwnerFocus-Etdf9zw$default, reason: not valid java name */
    public static /* synthetic */ boolean m5910requestOwnerFocusEtdf9zw$default(FocusTargetNode focusTargetNode, FocusDirection focusDirection, Rect rect, int i, Object obj) {
        if ((i & 1) != 0) {
            focusDirection = null;
        }
        if ((i & 2) != 0) {
            rect = null;
        }
        return m5909requestOwnerFocusEtdf9zw(focusTargetNode, focusDirection, rect);
    }

    private static final FocusTargetNode requireActiveChild(FocusTargetNode focusTargetNode) {
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
        if (activeChild != null) {
            return activeChild;
        }
        fg.c("ActiveParent with no focused child");
        return null;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusTransactionsKt$grantFocus$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ FocusTargetNode $this_grantFocus;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FocusTargetNode focusTargetNode) {
            super(0);
            this.$this_grantFocus = focusTargetNode;
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$this_grantFocus.fetchFocusProperties$ui();
        }
    }
}
