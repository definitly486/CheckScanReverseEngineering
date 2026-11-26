package androidx.compose.animation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class BoundsAnimationModifierNode$approachMeasure$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ BoundsAnimationModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoundsAnimationModifierNode$approachMeasure$1(BoundsAnimationModifierNode boundsAnimationModifierNode, Placeable placeable) {
        super(1);
        this.this$0 = boundsAnimationModifierNode;
        this.$placeable = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        long jM6022getTopLeftF1C5BW0;
        Rect value = this.this$0.boundsAnimation.getValue();
        LookaheadScope lookaheadScope = this.this$0.getLookaheadScope();
        BoundsAnimationModifierNode boundsAnimationModifierNode = this.this$0;
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        Offset offsetM5976boximpl = coordinates != null ? Offset.m5976boximpl(lookaheadScope.getLookaheadScopeCoordinates(placementScope).mo7712localPositionOfS_NoaFU(coordinates, Offset.Companion.m6003getZeroF1C5BW0(), boundsAnimationModifierNode.getAnimateMotionFrameOfReference())) : null;
        BoundsAnimationModifierNode boundsAnimationModifierNode2 = this.this$0;
        if (value != null) {
            boundsAnimationModifierNode2.boundsAnimation.m1085updateCurrentBoundstz77jQw(value.m6022getTopLeftF1C5BW0(), value.m6020getSizeNHjbRc());
            jM6022getTopLeftF1C5BW0 = value.m6022getTopLeftF1C5BW0();
        } else {
            Rect currentBounds = boundsAnimationModifierNode2.boundsAnimation.getCurrentBounds();
            jM6022getTopLeftF1C5BW0 = currentBounds != null ? currentBounds.m6022getTopLeftF1C5BW0() : Offset.Companion.m6003getZeroF1C5BW0();
        }
        long jM5991minusMKHz9U = offsetM5976boximpl != null ? Offset.m5991minusMKHz9U(jM6022getTopLeftF1C5BW0, offsetM5976boximpl.m5997unboximpl()) : Offset.Companion.m6003getZeroF1C5BW0();
        Placeable.PlacementScope.place$default(placementScope, this.$placeable, Math.round(Float.intBitsToFloat((int) (jM5991minusMKHz9U >> 32))), Math.round(Float.intBitsToFloat((int) (jM5991minusMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), 0.0f, 4, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
