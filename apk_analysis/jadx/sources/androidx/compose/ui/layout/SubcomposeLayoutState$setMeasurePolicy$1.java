package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutState$setMeasurePolicy$1 extends gh4 implements bm3<LayoutNode, bm3<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, j59> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubcomposeLayoutState$setMeasurePolicy$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, bm3<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> bm3Var) {
        layoutNode.setMeasurePolicy(this.this$0.getState().createMeasurePolicy(bm3Var));
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, bm3<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> bm3Var) {
        invoke2(layoutNode, bm3Var);
        return j59.a;
    }
}
