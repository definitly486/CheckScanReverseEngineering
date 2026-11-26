package androidx.compose.animation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class RenderInTransitionOverlayNode$measure$1$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ Placeable $this_run;
    final /* synthetic */ RenderInTransitionOverlayNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderInTransitionOverlayNode$measure$1$1(MeasureScope measureScope, RenderInTransitionOverlayNode renderInTransitionOverlayNode, Placeable placeable) {
        super(1);
        this.$this_measure = measureScope;
        this.this$0 = renderInTransitionOverlayNode;
        this.$this_run = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        if (!this.$this_measure.isLookingAhead()) {
            if (!this.this$0.getRenderInOverlay().invoke().booleanValue()) {
                this.this$0.setEnabled(false);
            } else if (placementScope.getCoordinates() != null) {
                RenderInTransitionOverlayNode renderInTransitionOverlayNode = this.this$0;
                renderInTransitionOverlayNode.setEnabled(true);
                renderInTransitionOverlayNode.m1142setPositionInOverlayk4lQ0M(renderInTransitionOverlayNode.getSharedScope().getRoot$animation().mo7711localPositionOfR5De75A(DelegatableNodeKt.requireLayoutCoordinates(renderInTransitionOverlayNode), Offset.Companion.m6003getZeroF1C5BW0()));
            }
        }
        Placeable.PlacementScope.place$default(placementScope, this.$this_run, 0, 0, 0.0f, 4, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
