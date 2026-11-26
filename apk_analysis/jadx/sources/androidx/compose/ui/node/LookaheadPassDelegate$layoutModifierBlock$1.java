package androidx.compose.ui.node;

import androidx.compose.ui.layout.Placeable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadPassDelegate$layoutModifierBlock$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ LookaheadPassDelegate this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LookaheadPassDelegate$layoutModifierBlock$1(LookaheadPassDelegate lookaheadPassDelegate) {
        super(0);
        this.this$0 = lookaheadPassDelegate;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        LookaheadDelegate lookaheadDelegate;
        Placeable.PlacementScope placementScope = null;
        if (LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(this.this$0.getLayoutNode()) || this.this$0.layoutNodeLayoutDelegate.getDetachedFromParentLookaheadPlacement$ui()) {
            NodeCoordinator wrappedBy$ui = this.this$0.getOuterCoordinator().getWrappedBy$ui();
            if (wrappedBy$ui != null) {
                placementScope = wrappedBy$ui.getPlacementScope();
            }
        } else {
            NodeCoordinator wrappedBy$ui2 = this.this$0.getOuterCoordinator().getWrappedBy$ui();
            if (wrappedBy$ui2 != null && (lookaheadDelegate = wrappedBy$ui2.getLookaheadDelegate()) != null) {
                placementScope = lookaheadDelegate.getPlacementScope();
            }
        }
        if (placementScope == null) {
            placementScope = LayoutNodeKt.requireOwner(this.this$0.getLayoutNode()).getPlacementScope();
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.this$0;
        LookaheadDelegate lookaheadDelegate2 = lookaheadPassDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate2.getClass();
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, lookaheadDelegate2, lookaheadPassDelegate.lastPosition, 0.0f, 2, null);
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
