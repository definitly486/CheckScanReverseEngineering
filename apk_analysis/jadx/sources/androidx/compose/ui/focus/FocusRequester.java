package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import defpackage.ah;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.pg;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusRequester {
    public static final int $stable = 0;
    private final MutableVector<FocusRequesterModifierNode> focusRequesterNodes = new MutableVector<>(new FocusRequesterModifierNode[16], 0);
    public static final Companion Companion = new Companion(null);
    private static final FocusRequester Default = new FocusRequester();
    private static final FocusRequester Cancel = new FocusRequester();
    private static final FocusRequester Redirect = new FocusRequester();

    /* JADX INFO: renamed from: requestFocus-3ESFkO8$default, reason: not valid java name */
    public static /* synthetic */ boolean m5892requestFocus3ESFkO8$default(FocusRequester focusRequester, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = FocusDirection.Companion.m5867getEnterdhqQ8s();
        }
        return focusRequester.m5893requestFocus3ESFkO8(i);
    }

    public final boolean captureFocus() {
        if (this.focusRequesterNodes.getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> mutableVector = this.focusRequesterNodes;
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            if (FocusRequesterModifierNodeKt.captureFocus(focusRequesterModifierNodeArr[i])) {
                return true;
            }
        }
        return false;
    }

    public final boolean findFocusTarget$ui(nl3<? super FocusTargetNode, Boolean> nl3Var) {
        Companion companion = Companion;
        if (this == companion.getDefault()) {
            ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return false;
        }
        if (this == companion.getCancel()) {
            ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return false;
        }
        if (getFocusRequesterNodes$ui().getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> focusRequesterNodes$ui = getFocusRequesterNodes$ui();
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = focusRequesterNodes$ui.content;
        int size = focusRequesterNodes$ui.getSize();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            FocusRequesterModifierNode focusRequesterModifierNode = focusRequesterModifierNodeArr[i];
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
            if (!focusRequesterModifierNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node child$ui = focusRequesterModifierNode.getNode().getChild$ui();
            if (child$ui == null) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusRequesterModifierNode.getNode(), false);
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
                                    if (nl3Var.invoke((FocusTargetNode) nodePop).booleanValue()) {
                                        z = true;
                                        break;
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
        }
        return z;
    }

    public final boolean freeFocus() {
        if (this.focusRequesterNodes.getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> mutableVector = this.focusRequesterNodes;
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            if (FocusRequesterModifierNodeKt.freeFocus(focusRequesterModifierNodeArr[i])) {
                return true;
            }
        }
        return false;
    }

    public final MutableVector<FocusRequesterModifierNode> getFocusRequesterNodes$ui() {
        return this.focusRequesterNodes;
    }

    @ul2
    public final /* synthetic */ void requestFocus() {
        m5893requestFocus3ESFkO8(FocusDirection.Companion.m5867getEnterdhqQ8s());
    }

    /* JADX INFO: renamed from: requestFocus-3ESFkO8, reason: not valid java name */
    public final boolean m5893requestFocus3ESFkO8(int i) {
        Companion companion = Companion;
        if (this == companion.getDefault()) {
            ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return false;
        }
        if (this == companion.getCancel()) {
            ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return false;
        }
        if (getFocusRequesterNodes$ui().getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> focusRequesterNodes$ui = getFocusRequesterNodes$ui();
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = focusRequesterNodes$ui.content;
        int size = focusRequesterNodes$ui.getSize();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            FocusRequesterModifierNode focusRequesterModifierNode = focusRequesterModifierNodeArr[i2];
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
            if (!focusRequesterModifierNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node child$ui = focusRequesterModifierNode.getNode().getChild$ui();
            if (child$ui == null) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusRequesterModifierNode.getNode(), false);
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
                                    if (((FocusTargetNode) nodePop).mo5896requestFocus3ESFkO8(i)) {
                                        z = true;
                                        break;
                                    }
                                } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                        if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                            i3++;
                                            if (i3 == 1) {
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
                                    if (i3 == 1) {
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
        }
        return z;
    }

    public final boolean restoreFocusedChild() {
        if (this.focusRequesterNodes.getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> mutableVector = this.focusRequesterNodes;
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z = FocusRequesterModifierNodeKt.restoreFocusedChild(focusRequesterModifierNodeArr[i]) || z;
        }
        return z;
    }

    public final boolean saveFocusedChild() {
        if (this.focusRequesterNodes.getSize() == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return false;
        }
        MutableVector<FocusRequesterModifierNode> mutableVector = this.focusRequesterNodes;
        FocusRequesterModifierNode[] focusRequesterModifierNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            if (FocusRequesterModifierNodeKt.saveFocusedChild(focusRequesterModifierNodeArr[i])) {
                return true;
            }
        }
        return false;
    }

    public static final class Companion {

        public static final class FocusRequesterFactory {
            public static final int $stable = 0;
            public static final FocusRequesterFactory INSTANCE = new FocusRequesterFactory();

            private FocusRequesterFactory() {
            }

            public final FocusRequester component1() {
                return new FocusRequester();
            }

            public final FocusRequester component10() {
                return new FocusRequester();
            }

            public final FocusRequester component11() {
                return new FocusRequester();
            }

            public final FocusRequester component12() {
                return new FocusRequester();
            }

            public final FocusRequester component13() {
                return new FocusRequester();
            }

            public final FocusRequester component14() {
                return new FocusRequester();
            }

            public final FocusRequester component15() {
                return new FocusRequester();
            }

            public final FocusRequester component16() {
                return new FocusRequester();
            }

            public final FocusRequester component2() {
                return new FocusRequester();
            }

            public final FocusRequester component3() {
                return new FocusRequester();
            }

            public final FocusRequester component4() {
                return new FocusRequester();
            }

            public final FocusRequester component5() {
                return new FocusRequester();
            }

            public final FocusRequester component6() {
                return new FocusRequester();
            }

            public final FocusRequester component7() {
                return new FocusRequester();
            }

            public final FocusRequester component8() {
                return new FocusRequester();
            }

            public final FocusRequester component9() {
                return new FocusRequester();
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final FocusRequesterFactory createRefs() {
            return FocusRequesterFactory.INSTANCE;
        }

        public final FocusRequester getCancel() {
            return FocusRequester.Cancel;
        }

        public final FocusRequester getDefault() {
            return FocusRequester.Default;
        }

        public final FocusRequester getRedirect$ui() {
            return FocusRequester.Redirect;
        }

        private Companion() {
        }
    }
}
