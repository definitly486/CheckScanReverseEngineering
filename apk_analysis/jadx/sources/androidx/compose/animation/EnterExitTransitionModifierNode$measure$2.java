package androidx.compose.animation;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionModifierNode$measure$2 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ nl3<GraphicsLayerScope, j59> $layerBlock;
    final /* synthetic */ long $offset;
    final /* synthetic */ long $offsetDelta;
    final /* synthetic */ Placeable $placeable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EnterExitTransitionModifierNode$measure$2(Placeable placeable, long j, long j2, nl3<? super GraphicsLayerScope, j59> nl3Var) {
        super(1);
        this.$placeable = placeable;
        this.$offset = j;
        this.$offsetDelta = j2;
        this.$layerBlock = nl3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        placementScope.placeWithLayer(this.$placeable, IntOffset.m9170getXimpl(this.$offsetDelta) + IntOffset.m9170getXimpl(this.$offset), IntOffset.m9171getYimpl(this.$offsetDelta) + IntOffset.m9171getYimpl(this.$offset), 0.0f, this.$layerBlock);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
