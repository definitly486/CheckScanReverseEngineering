package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusTargetModifierNodeKt {
    @ul2
    public static final /* synthetic */ FocusTargetModifierNode FocusTargetModifierNode() {
        return new FocusTargetNode(0, false, null, new AnonymousClass1(InvalidateSemantics.INSTANCE), 7, null);
    }

    /* JADX INFO: renamed from: FocusTargetModifierNode-PYyLHbc, reason: not valid java name */
    public static final FocusTargetModifierNode m5898FocusTargetModifierNodePYyLHbc(int i, bm3<? super FocusState, ? super FocusState, j59> bm3Var) {
        return new FocusTargetNode(i, false, bm3Var, null, 10, null);
    }

    /* JADX INFO: renamed from: FocusTargetModifierNode-PYyLHbc$default, reason: not valid java name */
    public static /* synthetic */ FocusTargetModifierNode m5899FocusTargetModifierNodePYyLHbc$default(int i, bm3 bm3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = Focusability.Companion.m5921getAlwaysLCbbffg();
        }
        if ((i2 & 2) != 0) {
            bm3Var = null;
        }
        return m5898FocusTargetModifierNodePYyLHbc(i, bm3Var);
    }

    public static final Rect getFocusedRect(FocusTargetModifierNode focusTargetModifierNode) {
        if (!focusTargetModifierNode.getNode().isAttached()) {
            return null;
        }
        FocusState focusState = focusTargetModifierNode.getFocusState();
        if (!focusState.getHasFocus()) {
            return null;
        }
        if (focusState.isFocused()) {
            return FocusTargetNode.fetchFocusRect$ui$default((FocusTargetNode) focusTargetModifierNode, null, 1, null);
        }
        FocusTargetNode activeFocusTargetNode = DelegatableNodeKt.requireOwner(focusTargetModifierNode).getFocusOwner().getActiveFocusTargetNode();
        if (activeFocusTargetNode != null) {
            return activeFocusTargetNode.fetchFocusRect$ui(DelegatableNodeKt.requireLayoutCoordinates(focusTargetModifierNode));
        }
        return null;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusTargetModifierNodeKt$FocusTargetModifierNode$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 extends qm3 implements nl3<FocusTargetNode, j59> {
        public AnonymousClass1(Object obj) {
            super(1, obj, InvalidateSemantics.class, "onDispatchEventsCompleted", "onDispatchEventsCompleted(Landroidx/compose/ui/focus/FocusTargetNode;)V", 0);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(FocusTargetNode focusTargetNode) {
            invoke2(focusTargetNode);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(FocusTargetNode focusTargetNode) {
            ((InvalidateSemantics) this.receiver).onDispatchEventsCompleted(focusTargetNode);
        }
    }
}
