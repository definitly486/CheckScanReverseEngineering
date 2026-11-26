package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutState$setRoot$1 extends gh4 implements bm3<LayoutNode, SubcomposeLayoutState, j59> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubcomposeLayoutState$setRoot$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
        SubcomposeLayoutState subcomposeLayoutState2 = this.this$0;
        LayoutNodeSubcompositionsState subcompositionsState$ui = layoutNode.getSubcompositionsState$ui();
        if (subcompositionsState$ui == null) {
            subcompositionsState$ui = new LayoutNodeSubcompositionsState(layoutNode, this.this$0.slotReusePolicy);
            layoutNode.setSubcompositionsState$ui(subcompositionsState$ui);
        }
        subcomposeLayoutState2._state = subcompositionsState$ui;
        this.this$0.getState().makeSureStateIsConsistent();
        this.this$0.getState().setSlotReusePolicy(this.this$0.slotReusePolicy);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
        invoke2(layoutNode, subcomposeLayoutState);
        return j59.a;
    }
}
