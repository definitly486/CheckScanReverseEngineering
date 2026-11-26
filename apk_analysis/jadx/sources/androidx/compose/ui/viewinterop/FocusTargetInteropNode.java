package androidx.compose.ui.viewinterop;

import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
final class FocusTargetInteropNode extends DelegatingNode implements ObserverModifierNode, CompositionLocalConsumerModifierNode {
    private final FocusTargetNode focusTargetNode = (FocusTargetNode) delegate(new FocusTargetNode(0, true, new FocusTargetInteropNode$focusTargetNode$1(this), null, 9, null));
    private PinnableContainer.PinnedHandle pinnedHandle;

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState focusState, FocusState focusState2) {
        boolean zIsFocused;
        if (isAttached() && (zIsFocused = focusState2.isFocused()) != focusState.isFocused()) {
            if (zIsFocused) {
                PinnableContainer pinnableContainerRetrievePinnableContainer = retrievePinnableContainer();
                this.pinnedHandle = pinnableContainerRetrievePinnableContainer != null ? pinnableContainerRetrievePinnableContainer.pin() : null;
            } else {
                PinnableContainer.PinnedHandle pinnedHandle = this.pinnedHandle;
                if (pinnedHandle != null) {
                    pinnedHandle.release();
                }
                this.pinnedHandle = null;
            }
        }
    }

    private final PinnableContainer retrievePinnableContainer() {
        r07 r07Var = new r07();
        ObserverModifierNodeKt.observeReads(this, new AnonymousClass1(r07Var, this));
        return (PinnableContainer) r07Var.b;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        PinnableContainer pinnableContainerRetrievePinnableContainer = retrievePinnableContainer();
        if (this.focusTargetNode.getFocusState().isFocused()) {
            PinnableContainer.PinnedHandle pinnedHandle = this.pinnedHandle;
            if (pinnedHandle != null) {
                pinnedHandle.release();
            }
            this.pinnedHandle = pinnableContainerRetrievePinnableContainer != null ? pinnableContainerRetrievePinnableContainer.pin() : null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.FocusTargetInteropNode$retrievePinnableContainer$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ r07<PinnableContainer> $container;
        final /* synthetic */ FocusTargetInteropNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(r07<PinnableContainer> r07Var, FocusTargetInteropNode focusTargetInteropNode) {
            super(0);
            this.$container = r07Var;
            this.this$0 = focusTargetInteropNode;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$container.b = CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, PinnableContainerKt.getLocalPinnableContainer());
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
