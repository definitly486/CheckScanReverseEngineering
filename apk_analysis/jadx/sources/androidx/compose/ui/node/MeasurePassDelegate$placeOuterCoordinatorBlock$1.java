package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class MeasurePassDelegate$placeOuterCoordinatorBlock$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ MeasurePassDelegate this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurePassDelegate$placeOuterCoordinatorBlock$1(MeasurePassDelegate measurePassDelegate) {
        super(0);
        this.this$0 = measurePassDelegate;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Placeable.PlacementScope placementScope;
        NodeCoordinator wrappedBy$ui = this.this$0.getOuterCoordinator().getWrappedBy$ui();
        if (wrappedBy$ui == null || (placementScope = wrappedBy$ui.getPlacementScope()) == null) {
            placementScope = LayoutNodeKt.requireOwner(this.this$0.getLayoutNode()).getPlacementScope();
        }
        Placeable.PlacementScope placementScope2 = placementScope;
        MeasurePassDelegate measurePassDelegate = this.this$0;
        nl3<? super GraphicsLayerScope, j59> nl3Var = measurePassDelegate.placeOuterCoordinatorLayerBlock;
        GraphicsLayer graphicsLayer = measurePassDelegate.placeOuterCoordinatorLayer;
        if (graphicsLayer != null) {
            placementScope2.m7783placeWithLayeraW9wM(measurePassDelegate.getOuterCoordinator(), measurePassDelegate.placeOuterCoordinatorPosition, graphicsLayer, measurePassDelegate.placeOuterCoordinatorZIndex);
        } else if (nl3Var == null) {
            placementScope2.m7774place70tqf50(measurePassDelegate.getOuterCoordinator(), measurePassDelegate.placeOuterCoordinatorPosition, measurePassDelegate.placeOuterCoordinatorZIndex);
        } else {
            placementScope2.m7782placeWithLayeraW9wM(measurePassDelegate.getOuterCoordinator(), measurePassDelegate.placeOuterCoordinatorPosition, measurePassDelegate.placeOuterCoordinatorZIndex, nl3Var);
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
