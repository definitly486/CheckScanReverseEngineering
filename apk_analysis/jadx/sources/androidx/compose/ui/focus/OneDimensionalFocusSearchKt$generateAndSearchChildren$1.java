package androidx.compose.ui.focus;

import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OneDimensionalFocusSearchKt$generateAndSearchChildren$1 extends gh4 implements nl3<BeyondBoundsLayout.BeyondBoundsScope, Boolean> {
    final /* synthetic */ FocusTargetNode $activeNodeBeforeSearch;
    final /* synthetic */ int $direction;
    final /* synthetic */ FocusTargetNode $focusedItem;
    final /* synthetic */ nl3<FocusTargetNode, Boolean> $onFound;
    final /* synthetic */ FocusTargetNode $this_generateAndSearchChildren;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OneDimensionalFocusSearchKt$generateAndSearchChildren$1(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, FocusTargetNode focusTargetNode3, int i, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        super(1);
        this.$activeNodeBeforeSearch = focusTargetNode;
        this.$this_generateAndSearchChildren = focusTargetNode2;
        this.$focusedItem = focusTargetNode3;
        this.$direction = i;
        this.$onFound = nl3Var;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(BeyondBoundsLayout.BeyondBoundsScope beyondBoundsScope) {
        if (this.$activeNodeBeforeSearch != DelegatableNodeKt.requireOwner(this.$this_generateAndSearchChildren).getFocusOwner().getActiveFocusTargetNode()) {
            return Boolean.TRUE;
        }
        boolean zM5927searchChildren4C6V_qg = OneDimensionalFocusSearchKt.m5927searchChildren4C6V_qg(this.$this_generateAndSearchChildren, this.$focusedItem, this.$direction, this.$onFound);
        Boolean boolValueOf = Boolean.valueOf(zM5927searchChildren4C6V_qg);
        if (zM5927searchChildren4C6V_qg || !beyondBoundsScope.getHasMoreContent()) {
            return boolValueOf;
        }
        return null;
    }
}
