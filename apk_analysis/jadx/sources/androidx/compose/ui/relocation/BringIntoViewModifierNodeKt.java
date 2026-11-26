package androidx.compose.ui.relocation;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a32;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ki0;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class BringIntoViewModifierNodeKt {

    /* JADX INFO: renamed from: androidx.compose.ui.relocation.BringIntoViewModifierNodeKt$bringIntoView$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<Rect> {
        final /* synthetic */ ll3<Rect> $bounds;
        final /* synthetic */ LayoutCoordinates $layoutCoordinates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ll3<Rect> ll3Var, LayoutCoordinates layoutCoordinates) {
            super(0);
            this.$bounds = ll3Var;
            this.$layoutCoordinates = layoutCoordinates;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Rect invoke() {
            Rect rectInvoke;
            ll3<Rect> ll3Var = this.$bounds;
            if (ll3Var != null && (rectInvoke = ll3Var.invoke()) != null) {
                return rectInvoke;
            }
            LayoutCoordinates layoutCoordinates = this.$layoutCoordinates;
            if (!layoutCoordinates.isAttached()) {
                layoutCoordinates = null;
            }
            if (layoutCoordinates != null) {
                return SizeKt.m6077toRectuvyYCjk(IntSizeKt.m9225toSizeozmzZPI(layoutCoordinates.mo7710getSizeYbymL2g()));
            }
            return null;
        }
    }

    public static final Object bringIntoView(DelegatableNode delegatableNode, ll3<Rect> ll3Var, e02<? super j59> e02Var) {
        Object obj;
        LayoutCoordinates layoutCoordinatesRequireLayoutCoordinates;
        Object objBringIntoView;
        NodeChain nodes$ui;
        if (!delegatableNode.getNode().isAttached()) {
            return j59.a;
        }
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(524288);
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = delegatableNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        loop0: while (true) {
            obj = null;
            if (layoutNodeRequireLayoutNode == null) {
                break;
            }
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof BringIntoViewModifierNode) {
                                obj = nodePop;
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
        BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
        return (bringIntoViewModifierNode != null && (objBringIntoView = bringIntoViewModifierNode.bringIntoView((layoutCoordinatesRequireLayoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates(delegatableNode)), new AnonymousClass2(ll3Var, layoutCoordinatesRequireLayoutCoordinates), e02Var)) == a32.COROUTINE_SUSPENDED) ? objBringIntoView : j59.a;
    }

    public static /* synthetic */ Object bringIntoView$default(DelegatableNode delegatableNode, ll3 ll3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = null;
        }
        return bringIntoView(delegatableNode, ll3Var, e02Var);
    }
}
