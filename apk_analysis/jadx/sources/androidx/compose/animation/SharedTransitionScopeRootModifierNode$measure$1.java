package androidx.compose.animation;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeRootModifierNode$measure$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ Placeable $p;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ SharedTransitionScopeRootModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScopeRootModifierNode$measure$1(MeasureScope measureScope, SharedTransitionScopeRootModifierNode sharedTransitionScopeRootModifierNode, Placeable placeable) {
        super(1);
        this.$this_measure = measureScope;
        this.this$0 = sharedTransitionScopeRootModifierNode;
        this.$p = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates != null) {
            boolean zIsLookingAhead = this.$this_measure.isLookingAhead();
            SharedTransitionScopeRootModifierNode sharedTransitionScopeRootModifierNode = this.this$0;
            if (zIsLookingAhead) {
                sharedTransitionScopeRootModifierNode.getSharedScope().setLookaheadRoot$animation(coordinates);
            } else {
                sharedTransitionScopeRootModifierNode.getSharedScope().setRoot$animation(coordinates);
                if (IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() && ((LookaheadAnimationVisualDebugConfig) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig())).isEnabled()) {
                    if (this.this$0.getSharedScope().getLookaheadAnimationVisualDebugHelper$animation() == null) {
                        this.this$0.getSharedScope().setLookaheadAnimationVisualDebugHelper$animation(new LookaheadAnimationVisualDebugHelper());
                    }
                    LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper$animation = this.this$0.getSharedScope().getLookaheadAnimationVisualDebugHelper$animation();
                    lookaheadAnimationVisualDebugHelper$animation.getClass();
                    lookaheadAnimationVisualDebugHelper$animation.m1137updateDrawingCoordinatesCowoxoA$animation(LayoutCoordinatesKt.positionInRoot(LayoutCoordinatesKt.findRootCoordinates(coordinates)), this.this$0.getSharedScope().getLookaheadRoot$animation().mo7710getSizeYbymL2g());
                }
            }
        }
        Placeable.PlacementScope.place$default(placementScope, this.$p, 0, 0, 0.0f, 4, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
